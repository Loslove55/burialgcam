.class public Lcom/marco/FixMarco;
.super Ljava/lang/Object;
.source "FixMarco.java"


# static fields
.field public static assets:Landroid/content/res/AssetManager;

.field public static cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

.field public static fastAndQuick:Z

.field public static i:I

.field public static isFrontEnabled:Z

.field public static mode:I

.field public static orientation:I

.field public static parentView:Landroid/view/ViewGroup;

.field public static screenx:I

.field public static screeny:I

.field public static staticContext:Landroid/content/Context;

.field public static thumbnail:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field public static thumbnailing:Z

.field public static xmlButton:Lcom/marco/xmlButton/XmlButton;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/marco/fixes/Fixes;->running:Z

    sput-boolean v0, Lcom/marco/FixMarco;->thumbnailing:Z

    sput-boolean v0, Lcom/marco/FixMarco;->fastAndQuick:Z

    sput-object p1, Lcom/marco/FixMarco;->cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/marco/FixMarco$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/marco/FixMarco$1;-><init>(Lcom/marco/FixMarco;Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;Landroid/os/Handler;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/marco/FixMarco;->setLocale()V

    return-void
.end method

.method private static setLocale()V
    .locals 3

    sget-object v0, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    sget-object v1, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static test()V
    .locals 1

    const-string v0, "test"

    invoke-static {v0}, Lcom/FixBSG;->MenuValueBoolean(Ljava/lang/String;)Z

    return-void
.end method

.method public static test2()V
    .locals 2

    sget v0, Lcom/marco/FixMarco;->mode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/marco/FixMarco;->writeTestFile(F)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lcom/marco/FixMarco;->toaster(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static toaster(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/marco/FixMarco$2;

    invoke-direct {v1, p0}, Lcom/marco/FixMarco$2;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static writeTestFile(F)V
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DCIM/Camera/."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v1, v5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method
