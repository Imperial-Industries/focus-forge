.class public final Lcom/google/android/gms/internal/zzchz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# direct methods
.method public static zzaxp()Landroid/os/Looper;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzchz;->zzaxp()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method
