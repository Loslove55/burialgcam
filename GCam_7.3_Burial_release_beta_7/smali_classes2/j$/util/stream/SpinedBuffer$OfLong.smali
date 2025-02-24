.class Lj$/util/stream/SpinedBuffer$OfLong;
.super Lj$/util/stream/SpinedBuffer$OfPrimitive;

# interfaces
.implements Lj$/util/function/LongConsumer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->preAccept()V

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v0, [J

    iget v1, p0, Lj$/util/stream/AbstractSpinedBuffer;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/AbstractSpinedBuffer;->elementIndex:I

    aput-wide p1, v0, v1

    return-void
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0

    check-cast p1, [J

    check-cast p4, Lj$/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/stream/SpinedBuffer$OfLong;->arrayForEach([JIILj$/util/function/LongConsumer;)V

    return-void
.end method

.method protected arrayForEach([JIILj$/util/function/LongConsumer;)V
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-wide v0, p1, p2

    invoke-interface {p4, v0, v1}, Lj$/util/function/LongConsumer;->accept(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfLong;->arrayLength([J)I

    move-result p1

    return p1
.end method

.method protected arrayLength([J)I
    .locals 0

    array-length p1, p1

    return p1
.end method

.method public forEach(Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Lj$/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "{0} calling SpinedBuffer.OfLong.forEach(Consumer)"

    invoke-static {p1, v0}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public get(J)J
    .locals 5

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->chunkFor(J)I

    move-result v0

    iget v1, p0, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    check-cast v0, [J

    long-to-int p2, p1

    aget-wide p1, v0, p2

    return-wide p1

    :cond_0
    iget-object v1, p0, Lj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    check-cast v1, [[J

    aget-object v1, v1, v0

    iget-object v2, p0, Lj$/util/stream/AbstractSpinedBuffer;->priorElementCount:[J

    aget-wide v3, v2, v0

    sub-long/2addr p1, v3

    long-to-int p2, p1

    aget-wide p1, v1, p2

    return-wide p1
.end method

.method public iterator()Lj$/util/PrimitiveIterator$OfLong;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfLong;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[J
    .locals 0

    new-array p1, p1, [J

    return-object p1
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/SpinedBuffer$OfLong;->newArrayArray(I)[[J

    move-result-object p1

    return-object p1
.end method

.method protected newArrayArray(I)[[J
    .locals 0

    new-array p1, p1, [[J

    return-object p1
.end method

.method public spliterator()Lj$/util/Spliterator$OfLong;
    .locals 7

    new-instance v6, Lj$/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget v3, p0, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    iget v5, p0, Lj$/util/stream/AbstractSpinedBuffer;->elementIndex:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Lj$/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s[length=%d, chunks=%d]%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    iget v0, p0, Lj$/util/stream/AbstractSpinedBuffer;->spineIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
