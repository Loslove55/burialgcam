.class public final Lomz;
.super Lomm;


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Loml;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lomy;->a()Z

    move-result v0

    sput-boolean v0, Lomz;->a:Z

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    nop

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    sput-boolean v1, Lomz;->b:Z

    const-class v0, Landroid/util/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    new-instance v0, Lomx;

    invoke-direct {v0}, Lomx;-><init>()V

    sput-object v0, Lomz;->c:Loml;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lomm;-><init>()V

    return-void
.end method

.method static j()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.system.VMStack"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackClass2"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lomz;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lomy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    return v0
.end method

.method static k()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method static l()Ljava/lang/Class;
    .locals 1

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    sget-boolean v0, Lomz;->a:Z

    return v0
.end method

.method static synthetic n()Z
    .locals 1

    sget-boolean v0, Lomz;->b:Z

    return v0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)Lomg;
    .locals 3

    sget-object v0, Lonc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lonc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lomw;

    invoke-interface {v0, p1}, Lomw;->a(Ljava/lang/String;)Lomg;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance v0, Lonc;

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lonc;-><init>(Ljava/lang/String;)V

    sget-object p1, Lona;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    sget-object p1, Lonc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    sget-object p1, Lona;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lonc;

    if-eqz p1, :cond_1

    sget-object v1, Lonc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lomw;

    invoke-virtual {p1}, Lomt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lomw;->a(Ljava/lang/String;)Lomg;

    move-result-object v1

    iput-object v1, p1, Lonc;->b:Lomg;

    goto :goto_0

    :cond_1
    invoke-static {}, Lonc;->b()V

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method protected b()Loml;
    .locals 1

    sget-object v0, Lomz;->c:Loml;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    const-string v0, "platform: Android"

    return-object v0
.end method
