.class Lcom/facebook/x/o/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:I

.field private d:Ljava/lang/Long;

.field private e:Lcom/facebook/x/o/k;

.field private f:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/x/o/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/x/o/i;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/facebook/x/o/i;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/facebook/x/o/i;->f:Ljava/util/UUID;

    return-void
.end method

.method public static i()V
    .locals 2

    invoke-static {}, Lcom/facebook/h;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/facebook/x/o/k;->b()V

    return-void
.end method

.method public static j()Lcom/facebook/x/o/i;
    .locals 10

    invoke-static {}, Lcom/facebook/h;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v8, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    cmp-long v9, v3, v1

    if-eqz v9, :cond_1

    cmp-long v9, v5, v1

    if-eqz v9, :cond_1

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/facebook/x/o/i;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/x/o/i;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    const/4 v2, 0x0

    const-string v3, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/facebook/x/o/i;->c:I

    invoke-static {}, Lcom/facebook/x/o/k;->c()Lcom/facebook/x/o/k;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/x/o/i;->e:Lcom/facebook/x/o/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/x/o/i;->d:Ljava/lang/Long;

    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/x/o/i;->f:Ljava/util/UUID;

    return-object v1

    :cond_1
    :goto_0
    return-object v7
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/x/o/i;->d:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/x/o/i;->b:Ljava/lang/Long;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/facebook/x/o/i;->c:I

    return v0
.end method

.method public c()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/facebook/x/o/i;->f:Ljava/util/UUID;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/facebook/x/o/i;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public e()J
    .locals 4

    iget-object v0, p0, Lcom/facebook/x/o/i;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/x/o/i;->b:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/x/o/i;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f()Lcom/facebook/x/o/k;
    .locals 1

    iget-object v0, p0, Lcom/facebook/x/o/i;->e:Lcom/facebook/x/o/k;

    return-object v0
.end method

.method public g()V
    .locals 1

    iget v0, p0, Lcom/facebook/x/o/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/x/o/i;->c:I

    return-void
.end method

.method public h()V
    .locals 4

    invoke-static {}, Lcom/facebook/h;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/x/o/i;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.facebook.appevents.SessionInfo.sessionStartTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/facebook/x/o/i;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.facebook.appevents.SessionInfo.sessionEndTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget v1, p0, Lcom/facebook/x/o/i;->c:I

    const-string v2, "com.facebook.appevents.SessionInfo.interruptionCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/facebook/x/o/i;->f:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.SessionInfo.sessionId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/facebook/x/o/i;->e:Lcom/facebook/x/o/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/x/o/k;->a()V

    :cond_0
    return-void
.end method
