package org.yuyu.domain;

import lombok.Data;

@Data
public class AttachFileDTO {
    private String uuid;  //UUID가 포함된 이름
    private String uploadPath; // 실제 파일이 업로드된 경로
    private String fileName; //파일 이름을 의미
    private boolean image; // 이미지 파일 여부 판단

}