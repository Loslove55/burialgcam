.class final Laus;
.super Ljava/lang/Object;

# interfaces
.implements Laur;


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laus;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    move-wide v2, p1

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget-object v4, p0, Laus;->a:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    iget-object v4, p0, Laus;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v4

    goto :goto_0

    :cond_1
    sub-long/2addr p1, v2

    return-wide p1

    :cond_2
    return-wide v0
.end method

.method public final a()S
    .locals 2

    iget-object v0, p0, Laus;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-short v0, v0

    return v0

    :cond_0
    new-instance v0, Lauq;

    invoke-direct {v0}, Lauq;-><init>()V

    throw v0
.end method

.method public final b()I
    .locals 2

    invoke-virtual {p0}, Laus;->a()S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Laus;->a()S

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
