.class Lcom/facebook/internal/p$b;
.super Lcom/facebook/internal/p$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/p$f;-><init>(Lcom/facebook/internal/p$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/p$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/internal/p$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.arstudio.player"

    return-object v0
.end method
