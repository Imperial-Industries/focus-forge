.class public Lcom/facebook/x/n/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/x/n/d$e;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "com.facebook.x.n.d"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Timer;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/x/n/d;->b:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/x/n/d;->d:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/x/n/d;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/facebook/x/n/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/facebook/x/n/d;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "%s/app_indexing"

    invoke-static {v1, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$e;)Lcom/facebook/GraphRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->h()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v0, "tree"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/x/o/b;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "app_version"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "platform"

    const-string v0, "android"

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "request_type"

    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "app_indexing"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/facebook/x/o/a;->l()Ljava/lang/String;

    move-result-object p0

    const-string p3, "device_session_id"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;)V

    new-instance p0, Lcom/facebook/x/n/d$d;

    invoke-direct {p0}, Lcom/facebook/x/n/d$d;-><init>()V

    invoke-virtual {p1, p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$e;)V

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/x/n/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/x/n/d;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/x/n/d;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/facebook/x/n/d;->c:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/x/n/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/x/n/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/facebook/h;->j()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/facebook/x/n/d$c;

    invoke-direct {v0, p0, p1}, Lcom/facebook/x/n/d$c;-><init>(Lcom/facebook/x/n/d;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/x/n/d;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/facebook/x/n/d;->c:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/x/n/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/x/n/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/x/n/d;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/x/n/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/h;->e()Ljava/lang/String;

    new-instance v2, Lcom/facebook/x/n/d$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/x/n/d$a;-><init>(Lcom/facebook/x/n/d;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/h;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/x/n/d$b;

    invoke-direct {v1, p0, v2}, Lcom/facebook/x/n/d$b;-><init>(Lcom/facebook/x/n/d;Ljava/util/TimerTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/x/n/d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/x/n/d;->c:Ljava/util/Timer;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/x/n/d;->c:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/facebook/x/n/d;->e:Ljava/lang/String;

    const-string v2, "Error unscheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
