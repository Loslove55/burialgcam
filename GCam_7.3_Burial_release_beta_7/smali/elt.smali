.class public final Lelt;
.super Landroid/os/HandlerThread;


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:I

.field final synthetic c:Lelv;


# direct methods
.method public constructor <init>(Lelv;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lelt;->c:Lelv;

    iput p3, p0, Lelt;->b:I

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lelt;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lelt;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lelt;->a:Landroid/os/Handler;

    iget-object v0, p0, Lelt;->c:Lelv;

    sget-object v1, Lelv;->a:Ljava/lang/String;

    iget-object v1, v0, Lelv;->d:Landroid/hardware/SensorManager;

    iget-object v0, v0, Lelv;->t:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lelt;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object v0, p0, Lelt;->c:Lelv;

    iget-object v1, v0, Lelv;->d:Landroid/hardware/SensorManager;

    iget-object v0, v0, Lelv;->t:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lelt;->b:I

    iget-object v4, p0, Lelt;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object v0, p0, Lelt;->c:Lelv;

    iget-object v1, v0, Lelv;->d:Landroid/hardware/SensorManager;

    iget-object v0, v0, Lelv;->t:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lelt;->a:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method
