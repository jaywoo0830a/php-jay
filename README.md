# 🚀 PHP Symfony TDD Snippets for VS Code

Symfony 8+ 프레임워크와 TDD(테스트 주도 개발) 방식으로 PHP를 개발하는 개발자를 위한 **인체공학적** VS Code 스니펫 익스텐션입니다.

## ✨ 주요 기능

| 카테고리 | 파일 | 설명 |
|---------|------|------|
| 🎮 Controller | `symfony-controller.code-snippets` | Controller, Route, Action, JSON, Redirect |
| 🗄️ Entity/Repository | `symfony-entity.code-snippets` | Entity, Repository, ORM Column, Relations |
| ⚙️ Service/Command | `symfony-service.code-snippets` | Service, Command (invokable), DTO, Enum |
| 🧪 TDD / Test | `symfony-test.code-snippets` | PHPUnit TestCase, Mock, DataProvider, WebTest |
| 📋 Form/Validator | `symfony-form.code-snippets` | FormType, Validator, Event, Voter, Message |

## ⌨️ 스니펫 프리픽스 규칙

- **`sf-`** = Symfony 관련 스니펫 (Controller, Entity, Service, Command, Form 등)
- **`tdd-`** = TDD / PHPUnit 테스트 스니펫

인체공학적으로 설계되어 **짧고 직관적인 프리픽스**로 빠르게 코드를 생성할 수 있습니다.

## 📚 스니펫 목록

### 🎮 Controller (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-controller` | 생성자 DI를 포함한 완전한 Controller 클래스 |
| `sf-ac` | AbstractController 상속 기본 컨트롤러 |
| `sf-route` | `#[Route]` 어트리뷰트 |
| `sf-action` | Render 응답을 포함한 액션 메서드 |
| `sf-json` | JSON 응답 액션 |
| `sf-redirect` | Redirect 응답 액션 |
| `sf-render` | `$this->render()` 호출 |

### 🗄️ Entity / Repository (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-entity` | 완전한 Doctrine Entity 클래스 |
| `sf-repo` | ServiceEntityRepository 클래스 |
| `sf-id` | `#[ORM\Id]` + `#[ORM\GeneratedValue]` |
| `sf-col` | `#[ORM\Column]` 어트리뷰트 |
| `sf-mto` | ManyToOne 관계 |
| `sf-otm` | OneToMany 관계 (컬렉션) |
| `sf-oto` | OneToOne 관계 |
| `sf-lifecycle` | PrePersist / PreUpdate 생명주기 콜백 |

### ⚙️ Service / Command (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-service` | 생성자 DI를 포함한 Service 클래스 |
| `sf-command` | 🆕 Console Command (invokable 스타일, Symfony 8 권장) |
| `sf-cmd-legacy` | Console Command (레거시 `execute()` 스타일) |
| `sf-cmd-invoke` | `__invoke()` 메서드 + `#[Argument]` |
| `sf-dto` | 읽기 전용 DTO 클래스 |
| `sf-iface` | Interface 정의 |
| `sf-trait` | Trait 정의 |
| `sf-enum-case` | PHP 8.1 Enum |

### 🧪 TDD / Test (`tdd-`)

| 프리픽스 | 설명 |
|---------|------|
| `tdd-case` | PHPUnit TestCase + `#[CoversClass]` + `#[Group]` |
| `tdd-kernel` | KernelTestCase (통합 테스트) |
| `tdd-web` | WebTestCase (기능 테스트) |
| `tdd-test` | `#[Test]` 메서드 (Given-When-Then 구조) |
| `tdd-assert` | 주요 PHPUnit Assertion 모음 |
| `tdd-mock` | `createMock()` (모킹) |
| `tdd-stub` | `createStub()` (단순 스텁) |
| `tdd-return-map` | `willReturnMap()` |
| `tdd-return-cb` | `willReturnCallback()` |
| `tdd-expect` | `expectException()` |
| `tdd-provider` | `#[DataProvider]` + data provider |
| `tdd-setup` | `setUp()` 메서드 |
| `tdd-teardown` | `tearDown()` 메서드 |
| `tdd-cmd-test` | CommandTester 기반 콘솔 명령어 테스트 |
| `tdd-repo-test` | Repository 통합 테스트 |

### 📋 Form / Validator / Event (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-form` | Form Type 클래스 |
| `sf-build-form` | `buildForm()` + 필드 + 제약조건 |
| `sf-validator` | Custom ConstraintValidator |
| `sf-constraint` | Custom Constraint (PHP Attribute) |
| `sf-event-sub` | EventSubscriber |
| `sf-event-listen` | `#[AsEventListener]` 어트리뷰트 |
| `sf-voter` | Security Voter |
| `sf-message` | Messenger Message + Handler |
| `sf-serialize` | Serializer 사용 예제 |

## 🆕 Symfony 8 네임스페이스

이 익스텐션은 **Symfony 8** 최신 네임스페이스를 사용합니다:

```php
// ✅ Route 어트리뷰트 (Symfony 6.2+/8.x)
use Symfony\Component\Routing\Attribute\Route;

// ✅ Console Command (invokable 스타일, Symfony 8 권장)
use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Attribute\Argument;

// ✅ Event Listener 어트리뷰트
use Symfony\Component\EventDispatcher\Attribute\AsEventListener;

// ✅ MapEntity 어트리뷰트
use Symfony\Bridge\Doctrine\Attribute\MapEntity;
```

## 📦 설치 방법

### VS Code Marketplace

1. VS Code 실행
2. `Ctrl+Shift+X` → Extensions
3. `php-symfony-tdd-snippets` 검색
4. Install 클릭

### 수동 설치 (.vsix)

```bash
# .vsix 파일 빌드
npm install -g @vscode/vsce
vsce package

# VS Code에서 설치
code --install-extension php-symfony-tdd-snippets-1.0.0.vsix
```

### 로컬 개발용

```bash
# 익스텐션 디렉토리를 VS Code 확장 폴더로 복사
cp -r php-symfony-tdd-snippets ~/.vscode/extensions/
```

## 🧪 사용 예시

### TDD 워크플로우

```
1. tdd-case    → TestCase 클래스 생성
2. tdd-test    → #[Test] 메서드 작성 (Given-When-Then)
3. tdd-mock    → 의존성 모킹
4. tdd-expect  → 예외 기대 설정
```

### Symfony 개발 워크플로우

```
1. sf-entity   → Entity 클래스 생성
2. sf-repo     → Repository 클래스 생성
3. sf-service  → Service 클래스 생성
4. sf-controller → Controller 클래스 생성
5. sf-command  → Console Command 생성
```

## 📋 요구사항

- VS Code 1.80.0 이상
- PHP 개발 환경
- Symfony 8.x 이상 권장 (7.x도 호환)

## 📄 라이선스

MIT
