.class final Lpfi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lpfj;


# direct methods
.method public constructor <init>(Lpfj;)V
    .locals 0

    iput-object p1, p0, Lpfi;->b:Lpfj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lpfi;->b:Lpfj;

    iget-object p1, p1, Lpfj;->a:Lpdm;

    invoke-interface {p1}, Lpdm;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lpfi;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lpfi;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpfi;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
