.class final Lpbm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field final synthetic a:Lpbu;

.field private b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lpbu;)V
    .locals 0

    iput-object p1, p0, Lpbm;->a:Lpbu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lpbm;->b:I

    iget-object p1, p0, Lpbm;->a:Lpbu;

    invoke-virtual {p1}, Lpbu;->a()I

    move-result p1

    iput p1, p0, Lpbm;->c:I

    return-void
.end method


# virtual methods
.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lpbm;->b:I

    iget v1, p0, Lpbm;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lpbm;->b:I

    iget v1, p0, Lpbm;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lpbm;->b:I

    iget-object v1, p0, Lpbm;->a:Lpbu;

    invoke-virtual {v1, v0}, Lpbu;->b(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
