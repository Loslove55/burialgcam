.class final Lix;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;
.implements Lj$/util/Iterator;
.implements Lj$/util/Map$Entry;


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Liz;


# direct methods
.method public constructor <init>(Liz;)V
    .locals 1

    iput-object p1, p0, Lix;->d:Liz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lix;->c:Z

    invoke-virtual {p1}, Liz;->a()I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    iput p1, p0, Lix;->a:I

    iput v0, p0, Lix;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    iget-boolean v0, p0, Lix;->c:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lix;->d:Liz;

    iget v3, p0, Lix;->b:I

    invoke-virtual {v2, v3, v1}, Liz;->a(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Liq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lix;->d:Liz;

    iget v2, p0, Lix;->b:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Liz;->a(II)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Liq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lix;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lix;->d:Liz;

    iget v1, p0, Lix;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Liz;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lix;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lix;->d:Liz;

    iget v1, p0, Lix;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Liz;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lix;->b:I

    iget v1, p0, Lix;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lix;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lix;->d:Liz;

    iget v1, p0, Lix;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Liz;->a(II)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lix;->d:Liz;

    iget v3, p0, Lix;->b:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Liz;->a(II)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    nop

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    xor-int/2addr v0, v2

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lix;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lix;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lix;->b:I

    iput-boolean v1, p0, Lix;->c:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lix;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lix;->d:Liz;

    iget v1, p0, Lix;->b:I

    invoke-virtual {v0, v1}, Liz;->a(I)V

    iget v0, p0, Lix;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lix;->b:I

    iget v0, p0, Lix;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lix;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lix;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lix;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lix;->d:Liz;

    iget v1, p0, Lix;->b:I

    invoke-virtual {v0, v1, p1}, Liz;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lix;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lix;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
