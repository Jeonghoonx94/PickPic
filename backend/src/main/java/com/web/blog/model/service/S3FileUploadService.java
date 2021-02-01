package com.web.blog.model.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

//import lombok.extern.slf4j.Slf4j;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.transfer.TransferManager;
import com.amazonaws.services.s3.transfer.Upload;
import com.web.blog.model.MemberDto;

@Service
public class S3FileUploadService {

	// 버킷 이름 동적 할당
	@Value("${cloud.aws.s3.bucket}")
	private String bucket;

	// 버킷 주소 동적 할당
	@Value("${cloud.aws.s3.bucket.url}")
	private String defaultUrl;

	private final AmazonS3Client amazonS3Client;
	private final String IMAGE_DIR = "c:\\SSAFY\\uploaded\\";

	public S3FileUploadService(AmazonS3Client amazonS3Client) {
		this.amazonS3Client = amazonS3Client;
	}

	public MemberDto upload(String email, MultipartFile uploadFile) throws IOException {
		MemberDto member = new MemberDto();
		String origName = uploadFile.getOriginalFilename();
		String url;
		try {
			// 확장자를 찾기 위한 코드
			final String ext = origName.substring(origName.lastIndexOf('.'));
			// 파일이름 암호화
			final String saveFileName = getUuid() + ext;
			// 파일 객체 생성
			// System.getProperty => 시스템 환경에 관한 정보를 얻을 수 있다. (user.dir = 현재 작업 디렉토리를 의미함)
			File file = new File(IMAGE_DIR + saveFileName);
			// 파일 변환
			uploadFile.transferTo(file);
			// S3 파일 업로드
			uploadOnS3(saveFileName, file);
			// 주소 할당
			url = defaultUrl + saveFileName;
			member.setEmail(email);
			member.setProfileImg(url);
			member.setProfileImgName(saveFileName);
			// 파일 삭제
			file.delete();
		} catch (StringIndexOutOfBoundsException e) {
			url = null;
		}
		return member;
	}

	private static String getUuid() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

	public void delete(String fileName) {
		try {
			// Delete 객체 생성
			DeleteObjectRequest deleteObjectRequest = new DeleteObjectRequest(bucket, fileName);
			// Delete
			this.amazonS3Client.deleteObject(deleteObjectRequest);
			System.out.println(String.format("[%s] deletion complete", fileName));

		} catch (AmazonServiceException e) {
			e.printStackTrace();
		} catch (SdkClientException e) {
			e.printStackTrace();
		}
	}

	private void uploadOnS3(final String findName, final File file) {
		// AWS S3 전송 객체 생성
		final TransferManager transferManager = new TransferManager(this.amazonS3Client);
		// 요청 객체 생성
		final PutObjectRequest request = new PutObjectRequest(bucket, findName, file);
		// 업로드 시도
		final Upload upload = transferManager.upload(request);

		try {
			upload.waitForCompletion();
		} catch (AmazonClientException amazonClientException) {
			amazonClientException.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}