.class final synthetic Lmkb;
.super Ljava/lang/Object;

# interfaces
.implements Loan;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmkb;->a:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmkb;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
