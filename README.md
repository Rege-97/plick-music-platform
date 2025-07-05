## PLICK - 음원 스트리밍 플랫폼
![logo](https://github.com/user-attachments/assets/e3089e6a-b10e-4dd4-bd86-d6e9f7c1da69)

## 📌 프로젝트 개요
**PLICK**은 JSP/Servlet 기반으로 구현된 음원 스트리밍 웹사이트입니다.

곡 재생, 다운로드, 댓글/평점, 이용권 권한 제어 등 실제 서비스 흐름을 반영한 기능을 구현한 팀 프로젝트입니다.

총 4인이 참여한 프로젝트이며, 저는 **팀장**으로서 아래 역할을 맡았습니다.

- 전체 개발 구조 및 협업 전략 수립
- 곡 플레이어, 앨범 상세 페이지, 이용권 관리 등 핵심 기능 구현
- 다운로드 기능, 권한 분기, 쿠키 기반 재생목록 설계 주도

기술적으로는 **비동기 요청(fetch/AJAX) 없이** JSP + Servlet 환경에서 쿠키, input hidden 필드, JavaScript를 활용해 **동기 흐름 내에서도 복잡한 상태 관리와 사용자 제어를 직접 구현**했습니다.

또한 제약된 기술 스택 내에서 **성능 개선(IN 절 조회 리팩토링 등)** 및 **권한 분기 처리, 예외 대응 구조 설계** 등을 통해 구조적이고 실용적인 설계를 경험했습니다.


## 📌 주요 기능

| 메인페이지 | 음악 플레이어 |
|--------|----------------|
| ![메인페이지](https://github.com/user-attachments/assets/a45fe1c7-b3b2-4944-bf1b-55ab27bf9494) | ![음악 플레이어](https://github.com/user-attachments/assets/e09d166d-f0b4-4d9f-8ca9-476d67720a1d) |

| 음원차트 | 앨범 정보 |
|-------------|--------------|
| ![음원차트](https://github.com/user-attachments/assets/13ad2f3a-7281-4f19-b3e4-8121dcdb2515) | ![앨범정보](https://github.com/user-attachments/assets/f87c8ee2-490b-4626-bb63-1d3128935b5f) |


### 🛠 사용 기술 스택

| 분야 | 기술 스택 |
|------|-----------|
| **언어** | ![Java](https://img.shields.io/badge/Java-007396?style=flat-square&logo=java&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black) ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white) |
| **백엔드** | ![JSP](https://img.shields.io/badge/JSP-007396?style=flat-square) ![Servlet](https://img.shields.io/badge/Servlet-6A5ACD?style=flat-square) ![JDBC](https://img.shields.io/badge/JDBC-336791?style=flat-square) ![MyBatis](https://img.shields.io/badge/MyBatis-0052CC?style=flat-square) |
| **프론트엔드** | ![JSTL](https://img.shields.io/badge/JSTL-116149?style=flat-square) ![EL](https://img.shields.io/badge/Expression_Language-505050?style=flat-square) ![Thymeleaf](https://img.shields.io/badge/Thymeleaf-005F0F?style=flat-square&logo=thymeleaf&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black) ![DOM](https://img.shields.io/badge/DOM_Manipulation-ffcc00?style=flat-square) |
| **서버 / DB** | ![Apache Tomcat](https://img.shields.io/badge/Tomcat-F8DC75?style=flat-square&logo=apachetomcat&logoColor=black) ![Oracle](https://img.shields.io/badge/Oracle-F80000?style=flat-square&logo=oracle&logoColor=white) |
| **협업 도구** | ![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white) ![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white) ![Figma](https://img.shields.io/badge/Figma-F24E1E?style=flat-square&logo=figma&logoColor=white) ![Notion](https://img.shields.io/badge/Notion-000000?style=flat-square&logo=notion&logoColor=white) ![ERD Cloud](https://img.shields.io/badge/ERD_Cloud-00B2E1?style=flat-square) |
| **기타 도구** | ![DBeaver](https://img.shields.io/badge/DBeaver-372923?style=flat-square) ![draw.io](https://img.shields.io/badge/draw.io-F08705?style=flat-square) ![Photoshop](https://img.shields.io/badge/Photoshop-31A8FF?style=flat-square&logo=adobephotoshop&logoColor=white) |



## 🔧 프로젝트 실행 방법
1. Git 클론 후 Eclipse에서 워크스페이스 설정 및 Import
2. Project → Properties → Project Facets 설정
    - Dynamic Web Module: 4.0
    - Java: 11
    - JavaScript: 1.0
3. Tomcat 설정
    - 버전: Apache Tomcat 9.0.100
    - 포트 변경 필요 → `/conf/server.xml`에서 포트번호 `9090`으로 수정
4. 서버 모듈 추가 및 Deploy

## 👤 나의 역할
### ✅ 팀 내 역할

- **팀장** (전체 설계 및 일정 조율 주도)
- 기술 도입 및 구조 결정 관련 조율
- Git 브랜치 전략, Figma/ERDCloud 기반 협업 구조 설계

### ✅ 백엔드 기능 구현

- **음악 플레이어 구현 (90%)**
    - 곡 일괄 조회 로직 리팩토링 (성능 96% 개선)
    - 쿠키 기반 재생목록 파싱 및 예외 처리 설계
    - fetch 없이 DOM + JavaScript로 제어 구현
- **앨범 / 곡 상세 페이지 (100%)**
    - 앨범-곡-플레이리스트 관계 설계 및 구현
    - 댓글/평점 처리 로직 및 DB 제약 설계
- **이용권 관리 기능 (90%)**
    - 이용권 등급별 기능 분기 (스트리밍/다운로드/자유)
    - 서버 측 렌더링 단계에서 권한 제어 처리
- **다운로드 유틸 기능**
    - <a> 태그와 JS 자동 클릭 방식의 앨범 일괄 다운로드 구현
    - 로그인/이용권 조건 검증 포함

### ✅ 문서화 및 협업 구조 설계

- ERD 직접 설계 (총 17개 테이블)
- 와이어프레임(Figma), API 흐름 정리
- GitHub Flow 기반 브랜치 전략 수립

## 📐 ERD & 설계
프로젝트의 데이터 흐름을 고려하여 총 17개의 테이블을 직접 설계하였고, 회원-이용권, 앨범-곡-플레이리스트 등의 핵심 관계를 중심으로 정규화와 외래키 기반의 관계형 구조를 구현했습니다.
![스크린샷 2025-06-27 165132](https://github.com/user-attachments/assets/a4407874-077d-4198-bc4a-cbdfb4cc1faa)

## 🔧 내가 구현한 기능
### 🎵 음악 플레이어

- 곡 정보를 개별 DAO 호출 → `IN 절 기반 일괄 조회`로 리팩토링
- 100곡 로딩 시간 평균 5초 → 0.2초로 약 96% 성능 개선
- 쿠키에서 곡 ID 문자열 파싱 (`1|4|7|10` 형태) → 빈값/잘못된 ID 예외 처리 포함

### 💾 다운로드 유틸

- JS에서 <a> 태그를 곡 수만큼 생성한 뒤, 0.2초 간격으로 자동 클릭 실행
- zip 제공이 어려운 상황에서도 "전체 다운로드" UX 제공
- 로그인/이용권 검증을 서버 측에서 사전 차단하여 보안 흐름 유지

### 🔐 이용권 권한 분기 처리

- 3가지 등급 (스트리밍/다운로드/자유)별 기능 접근 제어
- JSP 렌더링 시 서버에서 이용권 확인 → HTML 자체 미출력 처리
- 스트리밍은 이용권 미보유자에게 "1분 미리듣기" 기능으로 제한 구현

### ⭐ 앨범 평점 & 댓글

- 평점 중복 입력 방지 (사용자 + 앨범 조합에 고유 제약 설정)
- 신규 평점 → 기존 평점 수정 방식으로 전환
- 평균 평점 실시간 갱신 로직 → 별점 불일치 문제 해결

### 🎧 차트 기능

- 전체 인기차트 + 장르별 차트를 분리 구현
- 같은 정렬 로직 기반에 조건 필터만 분기하여 유지보수성 확보

## 🧠 문제 해결 경험
### 📌 곡 정보 개별 조회 → IN 절 일괄 조회로 리팩토링

- 초기에 재생목록의 곡 ID마다 DAO를 반복 호출 → 100곡 기준 평균 5초 이상 소요
- `IN (?, ?, ?, …)` 방식으로 한 번에 일괄 조회하도록 SQL/DAO 구조 개선
- 로딩 속도 0.2초 수준으로 단축 → **약 96% 성능 개선**

### 📌 쿠키 기반 재생목록 구조 설계

- 곡 ID를 문자열로 저장 (예: `1|4|7|10`) → 구분자 누락, 빈 값, 잘못된 ID 등의 예외 발생
- 문자열 파싱 시 정규 표현식 검증, 빈 항목 필터링, 잘못된 ID 요청 차단 로직 구현
- 단순 저장을 넘어 **서버-클라이언트 간 신뢰 가능한 상태 흐름 유지** 경험

### 📌 평점 중복 입력 문제

- 초기에는 한 사용자가 같은 앨범에 여러 번 평점 등록 가능 → 평균 점수 왜곡 발생
- DB에 사용자+앨범 조합에 대해 **고유 제약조건** 설정
- 평점 등록 → 수정 방식으로 전환하고, 평균 점수 실시간 갱신 쿼리로 개선

### 📌 다운로드 기능 기술적 제약 우회

- 서버에서 ZIP 일괄 다운로드 구현이 어려운 환경
- 자바스크립트로 <a> 태그를 자동 생성 → 0.2초 간격으로 순차 클릭 실행
- 전체 곡 다운로드와 유사한 사용자 경험 제공 → **현실적인 UX/보안 절충안 구현**

### 📌 이용권 중복 결제 및 권한 충돌

- 동일 이용권이 중복 결제되며 종료일이 꼬이는 현상 발생
- DAO에서 최신 이용권만 유효하도록 판단하는 로직 추가 → **권한 충돌 방지**
- 서버 렌더링 시 HTML 자체를 제어하여 비정상 접근 차단

## 🤝 협업 전략
### 🧭 기술 도입 조율

- 프로젝트 초반, 팀원 중 일부가 Spring 등 새로운 기술 도입을 제안했으나,
전체 팀원 역량을 고려해 **JSP/Servlet 기반으로 우선 완성하는 전략**을 제안
- 기술 실험보다 **일정 내 완성도 확보**를 우선시하며 의견 조율

### 🗂 ERD & 와이어프레임 기반 설계 공유

- **Figma**를 활용해 화면 설계, 흐름 동선 시각화
- **ERD Cloud**를 사용해 DB 구조 협의 및 지속적인 테이블 수정/공유
- 기능 단위 설계 전, 데이터 흐름 및 관계를 먼저 공유하며 구현 방향 정리

### 🔀 Git Flow & 협업 규칙 정립

- 기능 단위로 브랜치 분리: `feature/기능명`, `hotfix/버그명` 형태 사용
- 커밋 메시지 규칙, PR 템플릿 간단 정리 → GitHub 협업 효율 개선
- Git 사용이 익숙하지 않은 팀원을 위해 PR 병합 방식, 컨플릭트 처리 등 직접 가이드

### ⏱ 일정 관리 및 설계 기간 단축

- 당초 2주 예정이던 설계 기간을 **협업 도구 정립 + 역할 분담**을 통해 1주 내 조기 완료
- 각자 맡은 기능 외에도 공통 구조 이해를 돕기 위한 도식화 자료 수시 공유

## 📈 결과 & 회고

### 🚀 성과 요약

- 곡 리스트 개별 조회 → IN 절 일괄 조회로 **약 96% 성능 개선**
- 기술 도입 갈등 조율, Git 전략 수립 등 **팀 리딩 역할 성공적으로 수행**
- 다운로드 기능, 권한 분기 등 **제약 환경 내 현실적인 해결책 구현**

### 🧠 기술적 성장

- 동기 흐름에서도 재생/제어/예외 처리를 구조적으로 구현 가능함을 체감
- 단순 기능 구현을 넘어 **상태 관리, 데이터 흐름, 권한 설계** 등 백엔드 관점 강화
- 제한된 환경 속에서도 **실용적이고 확장 가능한 구조를 우선 설계**하는 습관 형성

### 🤝 협업과 태도 변화

- 팀 전체가 완주할 수 있는 방향을 잡는 것이 리더의 역할임을 체감
- 문서화, 도식화, 공통 이해를 통한 협업 생산성 향상 경험
- 기술적인 ‘정답’보다 **공감 가능한 ‘합의점’을 만드는 것이 중요함**을 배움

> 단순히 코드를 짠 경험이 아니라, "실제 서비스에 가까운 흐름을 설계하고, 팀과 함께 완성시킨 경험"이었습니다.
>
