.class final Lcom/marco/fixes/Fixes$4;
.super Ljava/lang/Object;
.source "Fixes.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marco/fixes/Fixes;->resetButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/marco/fixes/Fixes;->removeButtons()V

    new-instance v0, Lcom/marco/xmlButton/XmlButton;

    sget-object v1, Lcom/marco/FixMarco;->cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/marco/xmlButton/XmlButton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/marco/FixMarco;->xmlButton:Lcom/marco/xmlButton/XmlButton;

    new-instance v0, Lcom/marco/awbButton/AwbButton;

    sget-object v1, Lcom/marco/FixMarco;->cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/marco/awbButton/AwbButton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/marco/FixMarco;->awbButton:Lcom/marco/awbButton/AwbButton;

    new-instance v0, Lcom/marco/astroButton/AstroButton;

    sget-object v1, Lcom/marco/FixMarco;->cameraActivity:Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/marco/astroButton/AstroButton;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/marco/FixMarco;->astroButton:Lcom/marco/astroButton/AstroButton;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
