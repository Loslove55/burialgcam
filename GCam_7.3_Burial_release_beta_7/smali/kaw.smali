.class public final Lkaw;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field private final b:Landroid/os/Vibrator;

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lchh;)V
    .locals 1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkaw;->b:Landroid/os/Vibrator;

    sget-object p1, Lchn;->ak:Lchi;

    invoke-interface {p2, p1}, Lchh;->b(Lchi;)Z

    move-result p1

    iput-boolean p1, p0, Lkaw;->c:Z

    sget-object p1, Lchn;->al:Lchi;

    invoke-interface {p2, p1}, Lchh;->b(Lchi;)Z

    move-result p1

    iput-boolean p1, p0, Lkaw;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    :try_start_0
    invoke-static {p1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkaw;->a(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Landroid/os/VibrationEffect;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lkaw;->b:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkaw;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkaw;->b:Landroid/os/Vibrator;

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
