.class public final Llmm;
.super Ljava/io/OutputStream;


# instance fields
.field private final a:Llml;


# direct methods
.method public constructor <init>(Llml;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Llmm;->a:Llml;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    iget-object v0, p0, Llmm;->a:Llml;

    iget-object v1, v0, Llml;->a:Llty;

    invoke-virtual {v1}, Llty;->a()I

    move-result v1

    const-string v2, "CAM_ProcFSM"

    if-lez v1, :cond_0

    iget-object v1, v0, Llml;->a:Llty;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Warning: unwritten bytes in the buffer: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, v0, Llml;->d:I

    const-string v3, " bytes"

    if-lez v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Warning: still need to forward "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, v0, Llml;->c:I

    if-lez v1, :cond_2

    iget v1, v0, Llml;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Warning: still need to skip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v0, Llml;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Llmm;->a:Llml;

    iget-object v0, v0, Llml;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 5

    iget-object v0, p0, Llmm;->a:Llml;

    iget v1, v0, Llml;->c:I

    if-nez v1, :cond_1

    iget v1, v0, Llml;->d:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Llml;->b:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    iget p1, v0, Llml;->d:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Llml;->d:I

    return-void

    :cond_0
    iget-object v1, v0, Llml;->a:Llty;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llty;->b(I)V

    iget-object v3, v1, Llty;->a:[B

    iget v4, v1, Llty;->c:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    add-int/2addr v4, v2

    iput v4, v1, Llty;->c:I

    invoke-virtual {v0}, Llml;->b()V

    return-void

    :cond_1
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Llml;->c:I

    return-void

    :cond_2
    return-void
.end method

.method public final write([B)V
    .locals 3

    iget-object v0, p0, Llmm;->a:Llml;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Llml;->a([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    iget-object v0, p0, Llmm;->a:Llml;

    invoke-virtual {v0, p1, p2, p3}, Llml;->a([BII)V

    return-void
.end method
