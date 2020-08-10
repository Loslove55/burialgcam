.class public Lcom/marco/fixes/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# static fields
.field public static counter:I


# instance fields
.field private five:Landroid/graphics/Bitmap;

.field private four:Landroid/graphics/Bitmap;

.field private mode:I

.field private one:Landroid/graphics/Bitmap;

.field private seven:Landroid/graphics/Bitmap;

.field private six:Landroid/graphics/Bitmap;

.field private three:Landroid/graphics/Bitmap;

.field private final thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field private two:Landroid/graphics/Bitmap;

.field private zero:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/marco/FixMarco;->thumbnailing:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setClickable(Z)V

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-direct {p0}, Lcom/marco/fixes/Thumbnail;->delayThumbnail()V

    return-void
.end method

.method static synthetic access$000(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->zero:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->zero:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->one:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/marco/fixes/Thumbnail;)V
    .locals 0

    invoke-direct {p0}, Lcom/marco/fixes/Thumbnail;->delayPortrait()V

    return-void
.end method

.method static synthetic access$102(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->one:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/marco/fixes/Thumbnail;)Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->two:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->two:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->three:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->three:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->four:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->four:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->five:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$502(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->five:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->six:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$602(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->six:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/marco/fixes/Thumbnail;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/fixes/Thumbnail;->seven:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$702(Lcom/marco/fixes/Thumbnail;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/fixes/Thumbnail;->seven:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/marco/fixes/Thumbnail;)Z
    .locals 0

    invoke-direct {p0}, Lcom/marco/fixes/Thumbnail;->setThumbnail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/marco/fixes/Thumbnail;)I
    .locals 0

    iget p0, p0, Lcom/marco/fixes/Thumbnail;->mode:I

    return p0
.end method

.method private delayPortrait()V
    .locals 4

    iget v0, p0, Lcom/marco/fixes/Thumbnail;->mode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/marco/fixes/Thumbnail;->setThumbnail()Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/marco/fixes/Thumbnail$2;

    invoke-direct {v1, p0}, Lcom/marco/fixes/Thumbnail$2;-><init>(Lcom/marco/fixes/Thumbnail;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private delayThumbnail()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lcom/marco/fixes/Thumbnail;->counter:I

    sget v0, Lcom/marco/FixMarco;->mode:I

    iput v0, p0, Lcom/marco/fixes/Thumbnail;->mode:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/marco/fixes/Thumbnail$1;

    invoke-direct {v1, p0, v0}, Lcom/marco/fixes/Thumbnail$1;-><init>(Lcom/marco/fixes/Thumbnail;Landroid/os/Handler;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setThumbnail()Z
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/marco/FixMarco;->thumbnailing:Z

    const v1, 0x7f020318

    invoke-static {v1}, Lcom/marco/fixes/Fixes;->bitmapFromDrawables(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/marco/fixes/Thumbnail;->thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCIM/Camera/"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/marco/fixes/Fixes;->getLatestFilefromDir()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/marco/fixes/Thumbnail;->thumbnailView:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setThumbnail(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/marco/fixes/Thumbnail$3;

    invoke-direct {v1, p0, v0}, Lcom/marco/fixes/Thumbnail$3;-><init>(Lcom/marco/fixes/Thumbnail;Landroid/os/Handler;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method
