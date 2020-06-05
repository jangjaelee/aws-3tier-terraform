## AWS 3-Tier architecture with Terraform

'''
ㅁ AWS IAM IaC 계정 생성

ㅁ 생성 순서 (삭제는 역순)
1) vpc
2) route53
3) S3
4) rds
5) keypair
6) bastion-nic
7) bastion-instance
8) bastion-eip
9) TGS
10) ELB (ALB) included Rroute 53 alias
11) Packer
   ㄴ Web 서버 AMI 생성
   ㄴ WAS 서버 AMI 생성
   
   ㄴ new Web 서버 AMI 생성
   ㄴ new WAS 서버 AMI 생성


12) launch_configuration
13) ec2_auto_scaling
    ㄴ Scaling Policy 개발 추가 필요
    ㄴ Monitoring Metric 개발 추가 필요

-- Blue/Green 배포 -- 
14) CodeDeploy
15) new TGS - 완료
16) new launch_configuration - 완료 AMI-ID는 교체 필요
17) new ec2_scaling - 완료
18) ELB - ALB Listener에서 Target Groups 변경(TGS 변경으로 new Auto Scaling Group로 서비스)



-- 미완성 --
??) CloudFront
??) WAF / Shield
??) Storage Gateway
    ㄴ File G/W
    ㄴ Volume G/W
    ㄴ VTL G/W
'''
