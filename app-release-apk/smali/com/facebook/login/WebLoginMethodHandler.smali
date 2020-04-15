.class abstract Lcom/facebook/login/WebLoginMethodHandler;
.super Lcom/facebook/login/LoginMethodHandler;
.source ""


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/LoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TOKEN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .locals 2

    invoke-static {}, Lcom/facebook/login/WebLoginMethodHandler;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirect_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/login/LoginClient;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e2e"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "response_type"

    const-string v1, "token,signed_request"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "return_scopes"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient$Request;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "auth_type"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->d()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->d()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sso"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method protected a(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/e;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "e2e"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->h()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0}, Lcom/facebook/login/WebLoginMethodHandler;->e()Lcom/facebook/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, v1, p1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/c;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    iget-object p3, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {p3}, Lcom/facebook/login/LoginClient;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/facebook/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    goto :goto_1

    :cond_1
    instance-of p1, p3, Lcom/facebook/g;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    const-string p2, "User canceled log in."

    invoke-static {p1, p2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    instance-of p2, p3, Lcom/facebook/j;

    if-eqz p2, :cond_3

    check-cast p3, Lcom/facebook/j;

    invoke-virtual {p3}, Lcom/facebook/j;->a()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    const-string v1, "%d"

    invoke-static {p2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p2, v0

    :goto_0
    iget-object p3, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {p3}, Lcom/facebook/login/LoginClient;->g()Lcom/facebook/login/LoginClient$Request;

    move-result-object p3

    invoke-static {p3, v0, p1, p2}, Lcom/facebook/login/LoginClient$Result;->a(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p2

    :goto_1
    iget-object p1, p0, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/u;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/facebook/login/WebLoginMethodHandler;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginMethodHandler;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1, p2}, Lcom/facebook/login/LoginClient;->b(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method protected b(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->h()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->h()Ljava/util/Set;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->d()Lcom/facebook/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default_audience"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->m()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v1, "access_token"

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/facebook/login/WebLoginMethodHandler;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/facebook/login/LoginMethodHandler;->b:Lcom/facebook/login/LoginClient;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->c()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/u;->a(Landroid/content/Context;)V

    const-string p1, "0"

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract e()Lcom/facebook/c;
.end method
