# � php-jay — PHP + Symfony + TDD Snippets for VS Code

**php-jay**는 PHP 개발자를 위한 **인체공학적** VS Code 스니펫 익스텐션입니다.  
최신 PHP 8.x 문법, Symfony 8 프레임워크, TDD(테스트 주도 개발)를 아우르는 **종합 스니펫 컬렉션**입니다.

## ✨ 주요 기능

| 카테고리 | 파일 | 설명 |
|---------|------|------|
| 🧩 PHP 공통 | `php-common.code-snippets` | 태그, 슈퍼글로벌, 배열, 제어문, 루프, 클래스, 메서드, 예외처리 |
| 🚀 모던 PHP | `php-modern.code-snippets` | PHP 8.0~8.4 최신 문법 (match, enum, property hooks, asymmetric visibility 등) |
| 🎮 Symfony Controller | `symfony-controller.code-snippets` | Controller, Route, Action, JSON, Redirect |
| 🗄️ Symfony Entity | `symfony-entity.code-snippets` | Entity, Repository, ORM Column, Relations |
| ⚙️ Symfony Service | `symfony-service.code-snippets` | Service, Command (invokable), DTO, Enum |
| 🧪 TDD / Test | `symfony-test.code-snippets` | PHPUnit TestCase, Mock, DataProvider, WebTest |
| 📋 Symfony Form | `symfony-form.code-snippets` | FormType, Validator, Event, Voter, Message |
| 🌿 Twig | `symfony-twig.code-snippets` | extends, block, for, if, path, asset, form, trans, flash |

## ⌨️ 스니펫 프리픽스 규칙

| 접두사 | 분류 |
|-------|------|
| 일반 단축어 | PHP 공통 스니펫 (php, po, eco, arr, ifb, fore, cl, pubf, tryc...) |
| `g` | 슈퍼글로벌 (gget, gpost, gser, gss...) |
| `sf-` | Symfony (sf-controller, sf-entity, sf-command...) |
| `tdd-` | PHPUnit TDD (tdd-case, tdd-test, tdd-mock...) |
| `tw-` | Twig 템플릿 (tw-extends, tw-block, tw-for, tw-path, tw-form...) |
| `narg`, `match`, `enum`, `rprop` 등 | 모던 PHP 8.x 기능 |

## 📚 스니펫 목록

### 🧩 PHP 공통 (php-common)

<details>
<summary><b>PHP 태그</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `php` | `<?php ?>` |
| `po` | `<?php` |
| `pc` | `?>` |
| `peco` | `<?= $var ?>` |
| `pds` | `declare(strict_types=1);` |

</details>

<details>
<summary><b>슈퍼글로벌</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `gget` | `$_GET['key']` |
| `gpost` | `$_POST['key']` |
| `gss` | `$_SESSION['key']` |
| `gser` | `$_SERVER['key']` |
| `gcook` | `$_COOKIE['key']` |
| `gfile` | `$_FILES['key']['name']` |
| `greq` | `$_REQUEST['key']` |
| `genv` | `$_ENV['key']` |
| `gglob` | `$GLOBALS['key']` |

</details>

<details>
<summary><b>배열</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `arr` | `[value, ...]` |
| `ark` | `['key' => value, ...]` |
| `kv` | `'key' => value,` (addon) |
| `va` | `value,` (addon) |

</details>

<details>
<summary><b>문장</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `eco` | `echo '...';` |
| `ecov` | `echo $var;` |
| `inc` | `include __DIR__ . '/...';` |
| `inco` | `include_once __DIR__ . '/...';` |
| `rqr` | `require __DIR__ . '/...';` |
| `rqro` | `require_once __DIR__ . '/...';` |
| `df` | `define('...', '...');` |
| `pr` | `print_r($var);` |
| `vd` | `var_dump($var); die();` |
| `vx` | `var_export($var);` |

</details>

<details>
<summary><b>제어문</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `ifb` | `if () {}` |
| `ifel` | `if () {} else {}` |
| `ifelif` | `if () {} elseif () {} else {}` |
| `ifen` | `if (): endif;` |
| `ifelen` | `if (): else: endif;` |
| `sw` | `switch-case-default` |
| `cs` | `case: break;` (addon) |
| `tern` | `$cond ? true : false` |
| `ncoa` | `$var ?? default` |

</details>

<details>
<summary><b>루프</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `fore` | `foreach ($arr as $item) {}` |
| `forek` | `foreach ($arr as $key => $val) {}` |
| `forl` | `for ($i = 0; $i < n; $i++) {}` |
| `wl` | `while () {}` |
| `dowl` | `do {} while ();` |

</details>

<details>
<summary><b>클래스 / 인터페이스 / 트레이트</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `cl` | `class ClassName {}` |
| `clx` | `class extends ParentClass {}` |
| `cli` | `class implements Interface {}` |
| `clxi` | `class extends Parent implements Interface {}` |
| `acl` | `abstract class {}` |
| `fcl` | `final class {}` |
| `rcl` | `readonly class {}` (PHP 8.2+) |
| `in` | `interface {}` |
| `trt` | `trait {}` |
| `en` | `enum {}` (PHP 8.1+) |

</details>

<details>
<summary><b>메서드 / 함수</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `pubf` | `public function` |
| `pubsf` | `public static function` |
| `prof` | `protected function` |
| `prosf` | `protected static function` |
| `prif` | `private function` |
| `prisf` | `private static function` |
| `pubc` | `public function __construct` |

</details>

<details>
<summary><b>예외처리</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tryc` | `try-catch` |
| `tryf` | `try-catch-finally` |
| `cat` | `catch` (addon) |
| `thr` | `throw new` |

</details>

---

### 🚀 모던 PHP 8.x (php-modern)

| 버전 | 프리픽스 | 설명 |
|------|---------|------|
| 8.0 | `match` | match 표현식 |
| 8.0 | `matcht` | match(true) 조건식 |
| 8.0 | `narg` | Named arguments |
| 8.0 | `cpp` | Constructor property promotion |
| 8.0 | `utype` | Union type |
| 8.0 | `nsafe` | Nullsafe operator `?->` |
| 8.0 | `attr` | PHP Attribute `#[...]` |
| 8.1 | `itype` | Intersection type |
| 8.1 | `fcall` | First-class callable `fn(...)` |
| 8.1 | `newi` | new in initializers |
| 8.1 | `rprop` | readonly property |
| 8.1 | `enum` | Backed Enum |
| 8.1 | `aisl` | array_is_list() |
| 8.1 | `never` | never return type |
| 8.1 | `fiber` | Fiber (비동기) |
| 8.2 | `dtype` | DNF type |
| 8.2 | `rcls` | readonly class |
| 8.2 | `sparam` | `#[SensitiveParameter]` |
| 8.3 | `overr` | `#[Override]` |
| 8.3 | `tconst` | Typed class constant |
| 8.3 | `dconst` | Dynamic const fetch |
| 8.3 | `jval` | json_validate() |
| 8.3 | `cloner` | __clone() readonly reinit |
| 8.4 | `phook` | Property hooks get/set |
| 8.4 | `pget` | Property hook get only |
| 8.4 | `avis` | Asymmetric visibility `private(set)` |
| 8.4 | `avisp` | Asymmetric visibility `protected(set)` |
| 8.4 | `newc` | new without parentheses chain |
| 8.4 | `depr` | `#[Deprecated]` attribute |
| 8.4 | `afind` | array_find() |
| 8.4 | `aany` | array_any() |
| 8.4 | `aall` | array_all() |
| 8.4 | `lazy` | Lazy object proxy |

---

### 🎮 Symfony Controller (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-controller` | 생성자 DI를 포함한 Controller 클래스 |
| `sf-ac` | AbstractController 상속 기본 컨트롤러 |
| `sf-route` | `#[Route]` 어트리뷰트 |
| `sf-action` | Render 응답 액션 |
| `sf-json` | JSON 응답 액션 |
| `sf-redirect` | Redirect 응답 액션 |
| `sf-render` | `$this->render()` 호출 |

### 🗄️ Symfony Entity / Repository (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-entity` | Doctrine Entity 클래스 |
| `sf-repo` | ServiceEntityRepository 클래스 |
| `sf-id` | `#[ORM\Id]` + `#[ORM\GeneratedValue]` |
| `sf-col` | `#[ORM\Column]` |
| `sf-mto` | ManyToOne 관계 |
| `sf-otm` | OneToMany 관계 |
| `sf-oto` | OneToOne 관계 |
| `sf-lifecycle` | PrePersist / PreUpdate 콜백 |

### ⚙️ Symfony Service / Command (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-service` | 생성자 DI Service 클래스 |
| `sf-command` | 🆕 Console Command (invokable, Symfony 8 권장) |
| `sf-cmd-legacy` | Console Command (레거시 execute) |
| `sf-cmd-invoke` | `__invoke()` + `#[Argument]` |
| `sf-dto` | 읽기 전용 DTO |
| `sf-iface` | Interface |
| `sf-trait` | Trait |
| `sf-enum-case` | PHP 8.1 Enum |

### 🧪 TDD / PHPUnit (`tdd-`)

| 프리픽스 | 설명 |
|---------|------|
| `tdd-case` | TestCase + `#[CoversClass]` + `#[Group]` |
| `tdd-kernel` | KernelTestCase (통합) |
| `tdd-web` | WebTestCase (기능) |
| `tdd-test` | `#[Test]` (Given-When-Then) |
| `tdd-assert` | 주요 Assertion 모음 |
| `tdd-mock` | createMock() |
| `tdd-stub` | createStub() |
| `tdd-return-map` | willReturnMap() |
| `tdd-return-cb` | willReturnCallback() |
| `tdd-expect` | expectException() |
| `tdd-provider` | `#[DataProvider]` |
| `tdd-setup` | setUp() |
| `tdd-teardown` | tearDown() |
| `tdd-cmd-test` | CommandTester 테스트 |
| `tdd-repo-test` | Repository 통합 테스트 |

### 📋 Symfony Form / Validator / Event (`sf-`)

| 프리픽스 | 설명 |
|---------|------|
| `sf-form` | Form Type 클래스 |
| `sf-build-form` | buildForm() + 필드 |
| `sf-validator` | Custom ConstraintValidator |
| `sf-constraint` | Custom Constraint |
| `sf-event-sub` | EventSubscriber |
| `sf-event-listen` | `#[AsEventListener]` |
| `sf-voter` | Security Voter |
| `sf-message` | Messenger Message + Handler |
| `sf-serialize` | Serializer 사용 예제 |

---

### 🌿 Twig 템플릿 (`tw-`)

<details>
<summary><b>템플릿 구조</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tw-extends` | `{% extends 'base.html.twig' %}` |
| `tw-block` | `{% block %}...{% endblock %}` |
| `tw-block-s` | `{% block name %}content{% endblock %}` (한 줄) |
| `tw-parent` | `{{ parent() }}` |
| `tw-include` | `{{ include('template.html.twig') }}` |
| `tw-include-nc` | `{{ include() }}` without context |
| `tw-embed` | `{% embed %}...{% endembed %}` |
| `tw-use` | `{% use 'template.html.twig' %}` |

</details>

<details>
<summary><b>제어문</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tw-if` | `{% if %}...{% endif %}` |
| `tw-ifel` | `{% if %}...{% else %}...{% endif %}` |
| `tw-ifelif` | `{% if %}...{% elseif %}...{% else %}` |
| `tw-for` | `{% for item in items %}...{% endfor %}` |
| `tw-fork` | `{% for key, value in items %}` |
| `tw-fore` | for-else (빈 배열 처리) |

</details>

<details>
<summary><b>Symfony Path/Asset</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tw-path` | `{{ path('route') }}` |
| `tw-url` | `{{ url('route') }}` |
| `tw-asset` | `{{ asset('path') }}` |
| `tw-absurl` | `{{ absolute_url('path') }}` |

</details>

<details>
<summary><b>Symfony App & Security</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tw-user` | app.user 로그인 체크 |
| `tw-env` | app.debug / app.environment |
| `tw-flash` | Flash 메시지 (Bootstrap) |
| `tw-flash-s` | Flash 메시지 (심플) |
| `tw-grant` | `is_granted('ROLE_...')` |
| `tw-granto` | `is_granted('EDIT', entity)` |

</details>

<details>
<summary><b>Symfony Form</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tw-form-start` | `{{ form_start() }}` |
| `tw-form-end` | `{{ form_end() }}` |
| `tw-form-row` | `{{ form_row() }}` |
| `tw-form-widget` | `{{ form_widget() }}` |
| `tw-form-label` | `{{ form_label() }}` |
| `tw-form-errors` | `{{ form_errors() }}` |
| `tw-form-rest` | `{{ form_rest() }}` |
| `tw-form-full` | 완전한 폼 렌더링 |

</details>

<details>
<summary><b>Translation</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tw-trans` | `{% trans %}...{% endtrans %}` |
| `tw-transv` | `{{ 'key'\|trans }}` |
| `tw-transvd` | `{{ 'key'\|trans({}, 'domain') }}` |

</details>

<details>
<summary><b>Filters</b></summary>

| 프리픽스 | 출력 |
|---------|------|
| `tw-date` | `\|date('Y-m-d')` |
| `tw-datef` | `\|date('Y-m-d')` (한국식) |
| `tw-default` | `\|default('...')` |
| `tw-raw` | `\|raw` |
| `tw-upper` | `\|upper` |
| `tw-lower` | `\|lower` |
| `tw-length` | `\|length` |
| `tw-slice` | `\|slice(0, 10)` |
| `tw-join` | `\|join(', ')` |
| `tw-split` | `\|split(',')` |
| `tw-replace` | `\|replace({...})` |
| `tw-trim` | `\|trim` |
| `tw-striptags` | `\|striptags` |
| `tw-nl2br` | `\|nl2br` |
| `tw-first` | `\|first` |
| `tw-last` | `\|last` |
| `tw-keys` | `\|keys` |
| `tw-merge` | `\|merge` |
| `tw-sort` | `\|sort` |
| `tw-reverse` | `\|reverse` |

</details>

<details>
<summary><b>템플릿 패턴</b></summary>

| 프리픽스 | 설명 |
|---------|------|
| `tw-html5` | 완전한 HTML5 base.html.twig |
| `tw-page` | extends + block title + block content |
| `tw-pagef` | 완전한 페이지 (extends + for + path) |
| `tw-csrf` | CSRF 토큰 input |
| `tw-render` | `{{ render(controller()) }}` |
| `tw-renderr` | `{{ render(path()) }}` |

</details>

## 🧪 워크플로우 예시

### TDD 사이클

```
tdd-case → tdd-test → tdd-mock → tdd-expect
```

### Symfony 개발 사이클

```
sf-entity → sf-repo → sf-service → sf-controller → sf-command
```

### 일반 PHP 개발

```
pds → cl → pubc → pubf
```

### Twig 템플릿 개발

```
tw-html5 → tw-extends → tw-pagef → tw-for → tw-path
```

## 📦 설치

```bash
# .vsix 빌드
npm install -g @vscode/vsce
vsce package

# 설치
code --install-extension php-jay-1.0.0.vsix
```

## 📋 요구사항

- VS Code 1.80.0+
- PHP 8.1+ 권장

## 📄 라이선스

MIT

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
