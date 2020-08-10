.class Lcom/marco/FixMarco$1;
.super Ljava/lang/Object;
.source "FixMarco.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/FixMarco;-><init>(Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marco/FixMarco;

.field final synthetic val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/marco/FixMarco;Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/marco/FixMarco$1;->this$0:Lcom/marco/FixMarco;

    iput-object p2, p0, Lcom/marco/FixMarco$1;->val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    iput-object p3, p0, Lcom/marco/FixMarco$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/marco/FixMarco$1;->val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-static {v0}, Lcom/marco/fixes/Fixes;->existsSharedPreferences(Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/marco/fixes/Fixes;->screensize()V

    iget-object v0, p0, Lcom/marco/FixMarco$1;->val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sput v0, Lcom/marco/FixMarco;->orientation:I

    iget-object v0, p0, Lcom/marco/FixMarco$1;->val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/marco/FixMarco;->staticContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/marco/FixMarco$1;->val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/marco/FixMarco;->assets:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/marco/FixMarco$1;->val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sput-object v0, Lcom/marco/FixMarco;->parentView:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/marco/fixes/Fixes;->por()Ljava/lang/String;

    move-result-object v0

    const-string v1, "c5525d1ed3501d063c9ebae1e8672254"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/marco/fixes/Checker;

    iget-object v1, p0, Lcom/marco/FixMarco$1;->val$cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/marco/fixes/Checker;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/marco/fixes/Fixes;->resetButtons()V

    invoke-static {}, Lcom/marco/fixes/Fixes;->cleartmp()V

    invoke-static {}, Lcom/marco/fixes/Fixes;->fix12mp()V

    invoke-static {}, Lcom/marco/fixes/Fixes;->fixZeroXmls()V

    invoke-static {}, Lcom/marco/FixMarco;->access$000()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marco/strings/MarcosStrings;->resetFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCam/Configs7/Minilux/.firststart"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/marco/FixMarco$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
