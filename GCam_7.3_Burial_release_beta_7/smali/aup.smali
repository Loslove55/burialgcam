.class final Laup;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, p0, Laup;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final a(II)Z
    .locals 1

    iget-object v0, p0, Laup;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sub-int/2addr v0, p1

    if-lt v0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Laup;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method final a(I)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Laup;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laup;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method final b(I)S
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Laup;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laup;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
