.class public Landroid/support/wearable/complications/TimeDifferenceText;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/wearable/complications/TimeDependentText;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:Z

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    sput-object v0, Landroid/support/wearable/complications/TimeDifferenceText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJIZLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/wearable/complications/TimeDifferenceText;->a:J

    iput-wide p3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    iput p5, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:I

    iput-boolean p6, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:Z

    iput-object p7, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->a:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :goto_0
    iput-boolean v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/TimeUnit;->values()[Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    aget-object p1, v0, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private final a(J)J
    .locals 3

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->a:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    sub-long/2addr p1, v0

    return-wide p1

    :cond_1
    sub-long p1, v0, p1

    :goto_0
    return-wide p1
.end method

.method private static a(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JJ)J

    move-result-wide p0

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static a(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110006

    invoke-virtual {p1, v1, p0, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object v2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->d(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->b(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    cmp-long v1, v3, p0

    if-ltz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static b(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static b(JLjava/util/concurrent/TimeUnit;)I
    .locals 3

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    div-long/2addr p0, v0

    sget-object v0, Lxh;->a:[I

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x14

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unit not supported: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v2, 0x18

    goto :goto_0

    :cond_2
    nop

    nop

    goto :goto_0

    :cond_3
    const/16 v2, 0x3e8

    :cond_4
    :goto_0
    int-to-long v0, v2

    rem-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static b(JJ)J
    .locals 3

    div-long v0, p0, p2

    rem-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static b(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110007

    invoke-virtual {p1, v1, p0, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-lez v2, :cond_2

    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result p2

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->b(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const p1, 0x7f13034c

    invoke-virtual {p3, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v6}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->b(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result v0

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->d(J)I

    move-result v1

    if-lez v0, :cond_5

    if-lez v1, :cond_4

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v0, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->b(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {v1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const p2, 0x7f13034d

    invoke-virtual {p3, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {v0, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->b(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->d(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->c(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result p1

    invoke-static {p1, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static c(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method

.method private static c(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f110008

    invoke-virtual {p1, v1, p0, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c(JLandroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v2}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object v2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->d(J)I

    move-result p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const v0, 0x7f11000b

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const v0, 0x7f11000a

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const v0, 0x7f110009

    invoke-virtual {p3, v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static d(J)I
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:Z

    if-eqz v0, :cond_1

    const p2, 0x7f13034b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    const/4 v2, 0x7

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->c(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->c(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_6

    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v0

    :cond_7
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v3}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    invoke-static {p2, p3}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result p2

    invoke-static {p2, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->a(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    :cond_9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iget-object v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->b(J)I

    move-result v0

    if-lez v0, :cond_a

    goto :goto_2

    :cond_a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {p3, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->a(Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_c

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result p3

    if-lez p3, :cond_b

    goto :goto_1

    :cond_b
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->d(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%02d:%02d"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_c
    :goto_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->c(J)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {v3, v4}, Landroid/support/wearable/complications/TimeDifferenceText;->d(J)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "%d:%02d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_d
    :goto_2
    invoke-direct {p0, p2, p3, p1}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final a(JJ)Z
    .locals 6

    iget v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/complications/TimeDifferenceText;->a(J)J

    move-result-wide p1

    invoke-static {p1, p2, v4, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JJ)J

    move-result-wide p1

    invoke-direct {p0, p3, p4}, Landroid/support/wearable/complications/TimeDifferenceText;->a(J)J

    move-result-wide p3

    invoke-static {p3, p4, v4, v5}, Landroid/support/wearable/complications/TimeDifferenceText;->b(JJ)J

    move-result-wide p3

    cmp-long v0, p1, p3

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/support/wearable/complications/TimeDifferenceText;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/support/wearable/complications/TimeDifferenceText;->e:Ljava/util/concurrent/TimeUnit;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
