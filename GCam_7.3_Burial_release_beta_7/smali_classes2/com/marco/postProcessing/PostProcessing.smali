.class public Lcom/marco/postProcessing/PostProcessing;
.super Ljava/lang/Object;
.source "PostProcessing.java"


# instance fields
.field private check:Ljava/io/File;

.field private counter:I

.field private exifInterface:Landroidx/exifinterface/media/ExifInterface;

.field private file:Ljava/io/File;

.field private orientation:I

.field private original:Landroid/graphics/Bitmap;

.field private seperateFile:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/marco/fixes/Fixes;->fix12mp()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/marco/strings/MarcosStrings;->xmlPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->check:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->check:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-string v0, "pref_category_portfix"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/marco/FixMarco;->mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/marco/postProcessing/PostProcessing;->check:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :cond_2
    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    sget v0, Lcom/marco/FixMarco;->orientation:I

    iput v0, p0, Lcom/marco/postProcessing/PostProcessing;->orientation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/marco/postProcessing/PostProcessing;->counter:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/marco/postProcessing/PostProcessing$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/marco/postProcessing/PostProcessing$1;-><init>(Lcom/marco/postProcessing/PostProcessing;Landroid/os/Handler;Ljava/io/File;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$008(Lcom/marco/postProcessing/PostProcessing;)I
    .locals 2

    iget v0, p0, Lcom/marco/postProcessing/PostProcessing;->counter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/marco/postProcessing/PostProcessing;->counter:I

    return v0
.end method

.method static synthetic access$100(Lcom/marco/postProcessing/PostProcessing;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/marco/postProcessing/PostProcessing;->check:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200(Lcom/marco/postProcessing/PostProcessing;)V
    .locals 0

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->manipulate()V

    return-void
.end method

.method static synthetic access$300(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->flippedThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/marco/postProcessing/PostProcessing;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/marco/postProcessing/PostProcessing;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/marco/postProcessing/PostProcessing;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/marco/postProcessing/PostProcessing;->seperateFile:Z

    return p0
.end method

.method static synthetic access$600(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/marco/postProcessing/PostProcessing;->writeFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/marco/postProcessing/PostProcessing;Ljava/lang/String;)[Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lcom/marco/postProcessing/PostProcessing;->createPointsForCurve(Ljava/lang/String;)[Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private blur()Z
    .locals 2

    const-string v0, "pref_blur_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runBlur(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private brightness()Z
    .locals 2

    const-string v0, "pref_category_brightness"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runBrightness(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private createPointsForCurve(Ljava/lang/String;)[Landroid/graphics/PointF;
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pref_category_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, p1, v2

    const/4 v0, 0x2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, p1, v0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pref_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v7

    const/high16 v9, -0x3d380000    # -100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    if-lez v7, :cond_1

    new-instance v7, Landroid/graphics/PointF;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-direct {v7, v4, v8}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/graphics/PointF;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    invoke-direct {v7, v8, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-interface {v0, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v6

    const v8, 0x3e2e147b    # 0.17f

    const/16 v11, 0x64

    const/4 v12, 0x0

    if-ne v6, v11, :cond_2

    move-object v6, v12

    goto :goto_1

    :cond_2
    new-instance v6, Landroid/graphics/PointF;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    const v13, -0x41d1eb85    # -0.17f

    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v7, v8

    invoke-direct {v6, v8, v7}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    invoke-interface {v0, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "c"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v11, :cond_3

    move-object v6, v12

    goto :goto_2

    :cond_3
    new-instance v6, Landroid/graphics/PointF;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    const v13, 0x3ea8f5c3    # 0.33f

    add-float/2addr v7, v13

    invoke-direct {v6, v13, v7}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2
    invoke-interface {v0, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v11, :cond_4

    move-object v6, v12

    goto :goto_3

    :cond_4
    new-instance v6, Landroid/graphics/PointF;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    add-float/2addr v7, v3

    invoke-direct {v6, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_3
    invoke-interface {v0, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "e"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v11, :cond_5

    move-object v4, v12

    goto :goto_4

    :cond_5
    new-instance v4, Landroid/graphics/PointF;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    const v7, 0x3f28f5c3    # 0.66f

    add-float/2addr v6, v7

    invoke-direct {v4, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_4
    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    const v7, 0x3f547ae1    # 0.83f

    if-ne v4, v11, :cond_6

    move-object v4, v12

    goto :goto_5

    :cond_6
    new-instance v4, Landroid/graphics/PointF;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float/2addr v6, v7

    invoke-direct {v4, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_5
    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "g"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_7

    new-instance v4, Landroid/graphics/PointF;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v10

    sub-float p1, v5, p1

    invoke-direct {v4, p1, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_6

    :cond_7
    new-instance v4, Landroid/graphics/PointF;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v9

    sub-float p1, v5, p1

    invoke-direct {v4, v5, p1}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_6
    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_7
    invoke-interface {v0, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vorher"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nachher"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ToneCurve"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/graphics/PointF;

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    if-nez v1, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    const v5, 0x3e23d70a    # 0.16f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    const v5, 0x3f570a3d    # 0.84f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    :cond_a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private doPostProcessings()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/marco/postProcessing/PostProcessing;->seperateFile:Z

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->readExif()V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "pref_category_16by9"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->sixteenbynine()Z

    :cond_0
    const-string v0, "pref_onebyone_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->onebyone()Z

    :cond_1
    const-string v0, "pref_twentyonebynine_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->twentyonebynine()Z

    :cond_2
    const-string v0, "pref_category_sharpen"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->sharpen()Z

    :cond_3
    const-string v0, "pref_category_smoothen"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->smoothen()Z

    :cond_4
    const-string v0, "pref_category_saturation"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->saturation()Z

    :cond_5
    const-string v0, "pref_category_sepia"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->sepia()Z

    :cond_6
    const-string v0, "pref_category_brightness"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->brightness()Z

    :cond_7
    const-string v0, "pref_blur_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->blur()Z

    :cond_8
    const-string v0, "pref_hist_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->hist()Z

    :cond_9
    const-string v0, "pref_invert_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->invert()Z

    :cond_a
    const-string v0, "pref_vignette_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->vignette()Z

    :cond_b
    const-string v0, "pref_round_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->round()Z

    :cond_c
    const-string v0, "pref_category_sharpen2"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->sharpen2()Z

    :cond_d
    const-string v0, "pref_category_tonecurveactive"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->tonecurve()Z

    :cond_e
    return-void
.end method

.method private flippedThumbnail()Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/marco/postProcessing/PostProcessing;->orientation:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/marco/FixMarco;->isFrontEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_0
    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private hist()Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->runHist()Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private invert()Z
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->runInvert()Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private manipulate()V
    .locals 4

    invoke-static {}, Lcom/marco/fixes/Fixes;->isPostProcessingOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_filesize_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->readExif()V

    invoke-static {}, Lcom/marco/fixes/Fixes;->isPostProcessingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->doPostProcessings()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/marco/postProcessing/PostProcessing;->writeFile(Ljava/lang/String;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/marco/postProcessing/PostProcessing$2;

    invoke-direct {v1, p0}, Lcom/marco/postProcessing/PostProcessing$2;-><init>(Lcom/marco/postProcessing/PostProcessing;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->check:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private onebyone()Z
    .locals 4

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v3, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v3, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/marco/postProcessing/PostProcessing;->seperateFile:Z

    if-eqz v0, :cond_1

    const-string v0, "1by1"

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->writeFile(Ljava/lang/String;)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private readExif()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Make"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTimeOriginal"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "DateTimeDigitized"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "SubSecTime"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "OffsetTime"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "OffsetTimeOriginal"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "OffsetTimeDigitized"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Model"

    invoke-virtual {v0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSProcessingMethod"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSAltitudeRef"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLatitude"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLatitudeRef"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLongitude"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSLongitudeRef"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSDateStamp"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "GPSTimeStamp"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    const-string v1, "Orientation"

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private round()Z
    .locals 7

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v3, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v3, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v2, -0xbdbdbe

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v3, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v3, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    const-string v0, "round"

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->writeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private runBlur(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$10;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$10;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private runBrightness(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$6;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$6;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private runHist()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$11;

    invoke-direct {v0, p0}, Lcom/marco/postProcessing/PostProcessing$11;-><init>(Lcom/marco/postProcessing/PostProcessing;)V

    return-object v0
.end method

.method private runInvert()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$12;

    invoke-direct {v0, p0}, Lcom/marco/postProcessing/PostProcessing$12;-><init>(Lcom/marco/postProcessing/PostProcessing;)V

    return-object v0
.end method

.method private runSaturation(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$7;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$7;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private runSepia(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$5;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$5;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private runSharpen(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$8;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$8;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private runSharpen2(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$9;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$9;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private runSmoothen(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$13;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$13;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private runTonecurve()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$4;

    invoke-direct {v0, p0}, Lcom/marco/postProcessing/PostProcessing$4;-><init>(Lcom/marco/postProcessing/PostProcessing;)V

    return-object v0
.end method

.method private runVignette(I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/marco/postProcessing/PostProcessing$3;

    invoke-direct {v0, p0, p1}, Lcom/marco/postProcessing/PostProcessing$3;-><init>(Lcom/marco/postProcessing/PostProcessing;I)V

    return-object v0
.end method

.method private saturation()Z
    .locals 2

    const-string v0, "pref_category_saturation"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runSaturation(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private sepia()Z
    .locals 2

    const-string v0, "pref_category_sepia"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runSepia(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private sharpen()Z
    .locals 2

    const-string v0, "pref_category_sharpen"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runSharpen(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private sharpen2()Z
    .locals 2

    const-string v0, "pref_category_sharpen2"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runSharpen2(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private sixteenbynine()Z
    .locals 5

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v1, 0x9

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v0, 0x9

    :goto_0
    div-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v4, v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/marco/postProcessing/PostProcessing;->seperateFile:Z

    if-eqz v0, :cond_2

    const-string v0, "16by9"

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->writeFile(Ljava/lang/String;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private smoothen()Z
    .locals 2

    :try_start_0
    const-string v0, "pref_category_smoothen"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runSmoothen(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private tonecurve()Z
    .locals 2

    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->runTonecurve()Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private twentyonebynine()Z
    .locals 5

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v1, 0x9

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v0, 0x9

    :goto_0
    div-int/lit8 v2, v2, 0x15

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v4, v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/marco/postProcessing/PostProcessing;->seperateFile:Z

    if-eqz v0, :cond_2

    const-string v0, "21by9"

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->writeFile(Ljava/lang/String;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private vignette()Z
    .locals 2

    const-string v0, "pref_vignette_size_key"

    invoke-static {v0}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/marco/postProcessing/PostProcessing;->runVignette(I)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private writeExif()V
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageLength"

    invoke-virtual {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->exifInterface:Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private writeFile(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ".jpg"

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/marco/postProcessing/PostProcessing;->seperateFile:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-processed.jpg"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    :try_start_0
    const-string v2, "round"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "jpg"

    const-string v1, "png"

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget v2, Lcom/FixBSG;->sJPGQuality:I

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p1, "pref_filesize_key"

    invoke-static {p1}, Lcom/FixBSG;->MenuValue(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x65

    const/16 v3, 0x64

    if-ne p1, v3, :cond_3

    sget v3, Lcom/FixBSG;->sJPGQuality:I

    goto :goto_2

    :cond_3
    const/16 v4, 0xa

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr p1, v4

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v3, 0x2711

    :goto_1
    if-le v3, p1, :cond_5

    if-lez v2, :cond_5

    const-string v3, "quality"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v4, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v5, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    div-int/lit16 v3, v3, 0x41a

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_2
    iget-object p1, p0, Lcom/marco/postProcessing/PostProcessing;->original:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-object p1, v0

    :goto_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    invoke-direct {p0}, Lcom/marco/postProcessing/PostProcessing;->writeExif()V

    const/4 p1, 0x1

    return p1
.end method
