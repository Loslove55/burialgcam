.class Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;
.super Landroid/os/AsyncTask;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final fileName:Ljava/lang/String;

.field private final folderName:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private final listener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 0

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->folderName:Ljava/lang/String;

    iput-object p4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->fileName:Ljava/lang/String;

    iput-object p5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->listener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->listener:Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    return-object p0
.end method

.method static synthetic access$300(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x50

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->access$100(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x0

    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;

    invoke-direct {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)V

    invoke-static {p1, p2, p3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->folderName:Ljava/lang/String;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->fileName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return-object p1
.end method
