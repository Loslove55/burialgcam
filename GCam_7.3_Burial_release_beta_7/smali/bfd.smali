.class public final Lbfd;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljys;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IntentHelper"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfd;->a:Ljava/lang/String;

    sget-object v0, Ljys;->b:Ljys;

    sput-object v0, Lbfd;->b:Ljys;

    return-void
.end method

.method private static a(Ljys;Landroid/content/Intent;)Ljys;
    .locals 2

    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lbfg;->a:Lohh;

    invoke-virtual {v0, p1}, Lohh;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lbfg;->a:Lohh;

    invoke-virtual {p0, p1}, Lohh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljys;

    return-object p0

    :cond_0
    nop

    const-string v0, "android.intent.extra.STILL_IMAGE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lbfg;->b:Lohh;

    invoke-virtual {v0, p1}, Lohh;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lbfg;->b:Lohh;

    invoke-virtual {p0, p1}, Lohh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljys;

    return-object p0

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    sget-object p0, Lbfd;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xb

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "putExtra("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p0}, Lijd;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not found corresponding type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.extra.FRONT_CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lbfc;)Z
    .locals 2

    invoke-interface {p0}, Lbfc;->a()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.extra.FRONT_CAMERA"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lbfc;)Z
    .locals 4

    invoke-interface {p0}, Lbfc;->a()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lbfd;->c(Landroid/content/Intent;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lbfd;->e(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :cond_3
    :goto_1
    return v0
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Lbfc;)Z
    .locals 2

    invoke-interface {p0}, Lbfc;->a()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbfd;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lbfd;->c(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static d(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    nop

    const-string v0, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    const/4 v0, 0x3

    if-lt p0, v0, :cond_2

    const/16 v0, 0x1e

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0

    :cond_2
    return v0
.end method

.method public static e(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Landroid/content/Intent;)Ljys;
    .locals 2

    sget-object v0, Lbfd;->b:Ljys;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lbfd;->e(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljys;->i:Ljys;

    goto :goto_2

    :cond_1
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lbfd;->b:Ljys;

    invoke-static {v0, p0}, Lbfd;->a(Ljys;Landroid/content/Intent;)Ljys;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_0
    sget-object v0, Ljys;->h:Ljys;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Ljys;->c:Ljys;

    invoke-static {v0, p0}, Lbfd;->a(Ljys;Landroid/content/Intent;)Ljys;

    move-result-object v0

    goto :goto_2

    :cond_5
    nop

    :goto_2
    return-object v0
.end method

.method public static g(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.assistant.extra.CAMERA_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lbfg;->a:Lohh;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lohh;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lbfg;->c:Lohh;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lohh;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.extra.STILL_IMAGE_MODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lbfg;->b:Lohh;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lohh;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "com.google.assistant.extra.CAMERA_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "WIDE_ANGLE"

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_0
    nop

    const-string v1, "android.intent.extra.STILL_IMAGE_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    nop

    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public static l(Landroid/content/Intent;)Lgmg;
    .locals 3

    sget-object v0, Lgmg;->b:Lgmg;

    const-string v1, "com.google.assistant.extra.CAMERA_FLASH_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lbfg;->c:Lohh;

    invoke-virtual {v1, p0}, Lohh;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lbfg;->c:Lohh;

    invoke-virtual {v0, p0}, Lohh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgmg;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static m(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
