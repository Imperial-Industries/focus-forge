.class final Lcom/facebook/h$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/h;->a(Landroid/content/Context;Lcom/facebook/h$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/h$e;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/h$e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/h$c;->a:Lcom/facebook/h$e;

    iput-object p2, p0, Lcom/facebook/h$c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/h$c;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2

    invoke-static {}, Lcom/facebook/b;->e()Lcom/facebook/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b;->d()Z

    invoke-static {}, Lcom/facebook/s;->c()Lcom/facebook/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/s;->b()Z

    invoke-static {}, Lcom/facebook/AccessToken;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Profile;->d()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/Profile;->c()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/h$c;->a:Lcom/facebook/h$e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/h$e;->a()V

    :cond_1
    invoke-static {}, Lcom/facebook/h;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/facebook/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/x/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/h$c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/x/g;->b(Landroid/content/Context;)Lcom/facebook/x/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/x/g;->a()V

    const/4 v0, 0x0

    return-object v0
.end method
