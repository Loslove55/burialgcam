.class public final Laeu;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laeu;->a:I

    iput-object p1, p0, Laeu;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)C
    .locals 1

    iget-object v0, p0, Laeu;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Laeu;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a()I
    .locals 1

    iget-object v0, p0, Laeu;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 6

    iget v0, p0, Laeu;->a:I

    invoke-virtual {p0, v0}, Laeu;->a(I)C

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x30

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v3, v0

    iget v0, p0, Laeu;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Laeu;->a:I

    invoke-virtual {p0, v0}, Laeu;->a(I)C

    move-result v0

    nop

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_3

    if-gt v3, p2, :cond_2

    if-gez v3, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return p2

    :cond_3
    new-instance p2, Laej;

    const/4 v0, 0x5

    invoke-direct {p2, p1, v0}, Laej;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Laeu;->a:I

    iget-object v1, p0, Laeu;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()C
    .locals 2

    iget v0, p0, Laeu;->a:I

    iget-object v1, p0, Laeu;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Laeu;->b:Ljava/lang/String;

    iget v1, p0, Laeu;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Laeu;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laeu;->a:I

    return-void
.end method
