.class public final Loyu;
.super Landroid/os/Handler;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(Lcom/google/geo/lightfield/processing/ProgressCallback;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    iput p2, p0, Loyu;->b:F

    iput p2, p0, Loyu;->c:F

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Loyu;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Loyu;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Loyu;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Loyu;->removeMessages(I)V

    const/4 p1, 0x0

    sput-boolean p1, Loyv;->b:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    return-void

    :cond_0
    iget-object p1, p0, Loyu;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/geo/lightfield/processing/ProgressCallback;

    if-eqz p1, :cond_3

    iget v0, p0, Loyu;->c:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Loyu;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Loyu;->b:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    :goto_0
    iget v0, p0, Loyu;->b:F

    const v1, 0x3f7d70a4    # 0.99f

    cmpl-float v1, v0, v1

    if-gez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iget v3, p0, Loyu;->c:F

    mul-float v4, v2, v3

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Loyu;->c:F

    goto :goto_1

    :cond_2
    iget v0, p0, Loyu;->b:F

    iput v0, p0, Loyu;->c:F

    :goto_1
    invoke-interface {p1, v0}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    invoke-virtual {p0}, Loyu;->a()V

    :cond_3
    return-void
.end method
