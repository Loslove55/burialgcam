.class public final Lpgk;
.super Lpcu;

# interfaces
.implements Lpee;


# static fields
.field public static final g:Lpgk;

.field private static volatile h:Lpel;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Z

.field public e:Lpgp;

.field public f:Lpgn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpgk;

    invoke-direct {v0}, Lpgk;-><init>()V

    sput-object v0, Lpgk;->g:Lpgk;

    const-class v1, Lpgk;

    invoke-static {v1, v0}, Lpcu;->a(Ljava/lang/Class;Lpcu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lpcu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    if-eq p1, p2, :cond_6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    sget-object p1, Lpgk;->h:Lpel;

    if-nez p1, :cond_1

    const-class p2, Lpgk;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lpgk;->h:Lpel;

    if-nez p1, :cond_0

    new-instance p1, Lpcq;

    sget-object v0, Lpgk;->g:Lpgk;

    invoke-direct {p1, v0}, Lpcq;-><init>(Lpcu;)V

    sput-object p1, Lpgk;->h:Lpel;

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
    sget-object p1, Lpgk;->g:Lpgk;

    return-object p1

    :cond_3
    new-instance p1, Lpcp;

    invoke-direct {p1, v0, v0}, Lpcp;-><init>([[[S[[I)V

    return-object p1

    :cond_4
    new-instance p1, Lpgk;

    invoke-direct {p1}, Lpgk;-><init>()V

    return-object p1

    :cond_5
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v5, "a"

    aput-object v5, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const-string p2, "c"

    aput-object p2, p1, v4

    const-string p2, "d"

    aput-object p2, p1, v3

    const-string p2, "e"

    aput-object p2, p1, v2

    const-string p2, "f"

    aput-object p2, p1, v1

    sget-object p2, Lpgk;->g:Lpgk;

    const-string v0, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0002\u0000\u0002\u0002\u0001\u0003\u0007\u0002\u0004\t\u0003\u0005\t\u0004"

    invoke-static {p2, v0, p1}, Lpgk;->a(Lped;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
