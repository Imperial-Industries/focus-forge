.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroid/support/v4/app/DialogFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/login/DeviceAuthMethodHandler;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile f:Lcom/facebook/l;

.field private volatile g:Ljava/util/concurrent/ScheduledFuture;

.field private volatile h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field private i:Landroid/app/Dialog;

.field private j:Z

.field private k:Z

.field private l:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method private a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 3

    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/y/a/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/y/a/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/x/g;->b(Landroid/content/Context;)Lcom/facebook/x/g;

    move-result-object v0

    const-string v1, "fb_smart_login_service"

    invoke-virtual {v0, v1, v2, v2}, Lcom/facebook/x/g;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->d()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->c()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$d;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Lcom/facebook/internal/u$d;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$d;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Lcom/facebook/internal/u$d;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/internal/u$d;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 12

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/d;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/d;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/common/d;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/facebook/login/DeviceAuthDialog$f;

    move-object v5, v3

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/facebook/login/DeviceAuthDialog$f;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/u$d;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$e;

    move-object v3, p0

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$e;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/internal/u$d;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 10

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-static {}, Lcom/facebook/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/internal/u$d;->b()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Lcom/facebook/internal/u$d;->a()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/facebook/c;->j:Lcom/facebook/c;

    const/4 v8, 0x0

    move-object v1, p3

    move-object v3, p1

    move-object v7, p4

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/login/DeviceAuthMethodHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 20

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id,permissions,name"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_0

    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    mul-long v10, v10, v4

    add-long/2addr v8, v10

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long v6, v6, v4

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    :cond_1
    new-instance v1, Lcom/facebook/AccessToken;

    invoke-static {}, Lcom/facebook/h;->e()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v13, "0"

    move-object v10, v1

    move-object/from16 v11, p1

    move-object/from16 v17, v0

    move-object/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/c;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/o;->a:Lcom/facebook/o;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$g;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct {v5, v7, v8, v0, v2}, Lcom/facebook/login/DeviceAuthDialog$g;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    const-string v2, "me"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/GraphRequest$e;)V

    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->b()Lcom/facebook/l;

    return-void
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    return p0
.end method

.method static synthetic a(Lcom/facebook/login/DeviceAuthDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    return p1
.end method

.method private b()Lcom/facebook/GraphRequest;
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/o;->b:Lcom/facebook/o;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$d;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$d;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const/4 v1, 0x0

    const-string v2, "device/login_status"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/GraphRequest$e;)V

    return-object v6
.end method

.method static synthetic b(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    return p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b(J)V

    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->b()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->b()Lcom/facebook/l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/l;

    return-void
.end method

.method static synthetic c(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->c()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->f()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$c;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$c;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic e(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->d()V

    return-void
.end method

.method static synthetic f(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/LoginClient$Request;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method protected a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lcom/facebook/common/c;->com_facebook_smart_device_dialog_fragment:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/facebook/common/c;->com_facebook_device_auth_dialog_fragment:I

    :goto_0
    return p1
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/y/a/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->e()V

    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected a(Lcom/facebook/e;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/y/a/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->a(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public a(Lcom/facebook/login/LoginClient$Request;)V
    .locals 6

    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->l:Lcom/facebook/login/LoginClient$Request;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->h()Ljava/util/Set;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "redirect_uri"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "target_user_id"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/internal/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/y/a/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_info"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    sget-object v4, Lcom/facebook/o;->b:Lcom/facebook/o;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$a;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$a;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    const-string v2, "device/login"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/GraphRequest$e;)V

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->b()Lcom/facebook/l;

    return-void
.end method

.method protected b(Z)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->a(Z)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/facebook/common/b;->progress_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->a:Landroid/view/View;

    sget v0, Lcom/facebook/common/b;->confirmation_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->b:Landroid/widget/TextView;

    sget v0, Lcom/facebook/common/b;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$b;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$b;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/common/b;->com_facebook_device_auth_instructions:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->c:Landroid/widget/TextView;

    sget v1, Lcom/facebook/common/d;->com_facebook_device_auth_instructions:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/facebook/common/e;->com_facebook_auth_dialog:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-static {}, Lcom/facebook/y/a/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->k:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->b(Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->i:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/facebook/FacebookActivity;

    invoke-virtual {p2}, Lcom/facebook/FacebookActivity;->d()Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/d;

    invoke-virtual {p2}, Lcom/facebook/login/d;->c()Lcom/facebook/login/LoginClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/login/LoginClient;->d()Lcom/facebook/login/LoginMethodHandler;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog;->d:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz p3, :cond_0

    const-string p2, "request_state"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/facebook/login/DeviceAuthDialog;->a(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->f:Lcom/facebook/l;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->j:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->a()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    const-string v1, "request_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
