.class public final Lhpf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field public a:I

.field public final b:Landroid/hardware/SensorManager;

.field public final c:Landroid/hardware/Sensor;

.field public final d:Landroid/hardware/Sensor;

.field public final e:Ljava/util/concurrent/Executor;

.field private final g:[F

.field private final h:[F

.field private final i:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HeadingSensor"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhpf;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lhpf;->a:I

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lhpf;->g:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lhpf;->h:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lhpf;->i:[F

    iput-object p1, p0, Lhpf;->b:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lhpf;->e:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lhpf;->c:Landroid/hardware/Sensor;

    iget-object p1, p0, Lhpf;->b:Landroid/hardware/SensorManager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lhpf;->d:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhpf;->g:[F

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lhpf;->h:[F

    :goto_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x3

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v1, [F

    iget-object v0, p0, Lhpf;->i:[F

    new-array v1, v1, [F

    iget-object v3, p0, Lhpf;->g:[F

    iget-object v4, p0, Lhpf;->h:[F

    invoke-static {v0, v1, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v0, p0, Lhpf;->i:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget p1, p1, v2

    const/high16 v0, 0x43340000    # 180.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p1, v0

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lhpf;->a:I

    if-gez p1, :cond_1

    add-int/lit16 p1, p1, 0x168

    iput p1, p0, Lhpf;->a:I

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lhpf;->f:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unexpected sensor type %s"

    invoke-static {p1, v1}, Llvf;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
