.class public final Lemt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/lens/lenslite/api/ImageProxy;


# instance fields
.field public final a:Lmpq;


# direct methods
.method public constructor <init>(Lmpq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lemt;->a:Lmpq;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->close()V

    return-void
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->a()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()I
    .locals 1

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->b()I

    move-result v0

    return v0
.end method

.method public final getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->g()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->d()I

    move-result v0

    return v0
.end method

.method public final getPlanes()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Logx;

    invoke-direct {v1}, Logx;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmpp;

    new-instance v3, Lems;

    invoke-direct {v3, v2}, Lems;-><init>(Lmpp;)V

    invoke-virtual {v1, v3}, Logx;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Logx;->a()Lohc;

    move-result-object v0

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWidth()I
    .locals 1

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0}, Lmpq;->c()I

    move-result v0

    return v0
.end method

.method public final setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lemt;->a:Lmpq;

    invoke-interface {v0, p1}, Lmpq;->a(Landroid/graphics/Rect;)V

    return-void
.end method
