.class final Lahf;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/hardware/Camera$ShutterCallback;

.field public final b:Landroid/hardware/Camera$PictureCallback;

.field public final c:Landroid/hardware/Camera$PictureCallback;

.field public final d:Landroid/hardware/Camera$PictureCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahf;->a:Landroid/hardware/Camera$ShutterCallback;

    iput-object p2, p0, Lahf;->b:Landroid/hardware/Camera$PictureCallback;

    iput-object p3, p0, Lahf;->c:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lahf;->d:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method
