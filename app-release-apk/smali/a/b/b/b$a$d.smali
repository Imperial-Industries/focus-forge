.class La/b/b/b$a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/b/b$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:La/b/b/b$a;


# direct methods
.method constructor <init>(La/b/b/b$a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, La/b/b/b$a$d;->c:La/b/b/b$a;

    iput-object p2, p0, La/b/b/b$a$d;->a:Ljava/lang/String;

    iput-object p3, p0, La/b/b/b$a$d;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La/b/b/b$a$d;->c:La/b/b/b$a;

    iget-object v0, v0, La/b/b/b$a;->b:La/b/b/a;

    iget-object v1, p0, La/b/b/b$a$d;->a:Ljava/lang/String;

    iget-object v2, p0, La/b/b/b$a$d;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, La/b/b/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
