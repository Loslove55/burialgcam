.class public final Lmuv;
.super Lpcu;

# interfaces
.implements Lpee;


# static fields
.field public static final a:Lmuv;

.field private static volatile b:Lpel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmuv;

    invoke-direct {v0}, Lmuv;-><init>()V

    sput-object v0, Lmuv;->a:Lmuv;

    const-class v1, Lmuv;

    invoke-static {v1, v0}, Lpcu;->a(Ljava/lang/Class;Lpcu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lpcu;-><init>()V

    sget-object v0, Lpeo;->b:Lpeo;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    sget-object p1, Lmuv;->b:Lpel;

    if-nez p1, :cond_1

    const-class p2, Lmuv;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lmuv;->b:Lpel;

    if-nez p1, :cond_0

    new-instance p1, Lpcq;

    sget-object v0, Lmuv;->a:Lmuv;

    invoke-direct {p1, v0}, Lpcq;-><init>(Lpcu;)V

    sput-object p1, Lmuv;->b:Lpel;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    sget-object p1, Lmuv;->a:Lmuv;

    return-object p1

    :cond_3
    new-instance p1, Lpcp;

    invoke-direct {p1, v0, v0}, Lpcp;-><init>([[I[[I)V

    return-object p1

    :cond_4
    new-instance p1, Lmuv;

    invoke-direct {p1}, Lmuv;-><init>()V

    return-object p1

    :cond_5
    sget-object p1, Lmuv;->a:Lmuv;

    const-string p2, "\u0000\u0000"

    invoke-static {p1, p2, v0}, Lmuv;->a(Lped;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0

    :cond_7
    nop

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
