.class public final Lfqd;
.super Ljava/lang/Object;

# interfaces
.implements Lfua;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lftr;

.field public final b:Lfrx;

.field private final d:Lfqf;

.field private final e:Llvb;

.field private final f:Lchh;

.field private final g:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lfqd;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lfqf;Lftr;Llvb;Lchh;Lfrx;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqd;->d:Lfqf;

    iput-object p2, p0, Lfqd;->a:Lftr;

    const-class p1, Lfru;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Llvb;->a(Ljava/lang/String;)Llvb;

    move-result-object p1

    iput-object p1, p0, Lfqd;->e:Llvb;

    iput-object p4, p0, Lfqd;->f:Lchh;

    iput-object p5, p0, Lfqd;->b:Lfrx;

    iput-object p6, p0, Lfqd;->g:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lftw;Lfwe;Lfum;Lftz;)V
    .locals 14

    move-object v9, p0

    move-object/from16 v7, p4

    sget-object v0, Lfqd;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "fast launcher shot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lfqd;->e:Llvb;

    invoke-static {v0, v1}, Llvc;->a(Ljava/lang/String;Llvb;)Llvc;

    move-result-object v10

    const-string v0, "launcher got a HDR+ burst"

    invoke-interface {v10, v0}, Llvb;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lftw;->a()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "    with frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Llvb;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x25

    aput v3, v1, v2

    move-object v6, p1

    invoke-static {p1, v1}, Lfib;->a(Lftw;[I)Lmpq;

    move-result-object v11

    if-nez v11, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get a RAW10 image from input frames!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lftz;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lftw;->c()Loxo;

    move-result-object v1

    invoke-interface {v1}, Loxo;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lmpf;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v13, Lfqc;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v11

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, p1

    move-object/from16 v7, p4

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lfqc;-><init>(Lfqd;Lmpq;Lfwe;Lfum;Lftw;Lftz;Llvb;)V

    iget-object v1, v9, Lfqd;->d:Lfqf;

    move-object/from16 v2, p2

    iget v2, v2, Lfwe;->a:I

    invoke-virtual {v1, v12, v2}, Lfqf;->a(Lmpf;I)Lfts;

    move-result-object v1

    new-instance v2, Lluo;

    iget-object v3, v9, Lfqd;->g:Landroid/media/MediaFormat;

    const-string v4, "width"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v9, Lfqd;->g:Landroid/media/MediaFormat;

    const-string v5, "height"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lluo;-><init>(II)V

    iget-object v3, v9, Lfqd;->f:Lchh;

    sget-object v4, Lcht;->m:Lchi;

    invoke-interface {v3, v4}, Lchh;->b(Lchi;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lftq;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lftq;-><init>(Lluo;IJ)V

    goto :goto_0

    :cond_1
    new-instance v3, Lftq;

    const-wide/16 v4, 0x23

    invoke-direct {v3, v2, v0, v4, v5}, Lftq;-><init>(Lluo;IJ)V

    nop

    move-object v0, v3

    :goto_0
    iget-object v2, v9, Lfqd;->a:Lftr;

    invoke-interface {v2, v11, v1, v0, v13}, Lftr;->a(Lmpq;Lfts;Lftq;Lftp;)V

    const-string v0, "launched FastMomentsHdr shot"

    invoke-interface {v10, v0}, Llvb;->b(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "metadata get interrupted"

    invoke-interface {v10, v1}, Llvb;->c(Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lftz;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to acquire metadata from the first frame."

    invoke-interface {v10, v1}, Llvb;->c(Ljava/lang/String;)V

    invoke-interface {v7, v0}, Lftz;->a(Ljava/lang/Throwable;)V

    return-void
.end method
