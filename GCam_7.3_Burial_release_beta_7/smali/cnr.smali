.class final synthetic Lcnr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcoa;


# direct methods
.method public constructor <init>(Lcoa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnr;->a:Lcoa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcnr;->a:Lcoa;

    iget-object v1, v0, Lcoa;->c:Llvb;

    const-string v2, "deleting old data from per-shot log"

    invoke-interface {v1, v2}, Llvb;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcoa;->d:Lj$/time/Clock;

    invoke-virtual {v1}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v1

    sget-object v2, Lcoa;->b:Lj$/time/Duration;

    invoke-virtual {v1, v2}, Lj$/time/Instant;->minus(Lj$/time/temporal/TemporalAmount;)Lj$/time/Instant;

    move-result-object v1

    iget-object v2, v0, Lcoa;->f:Lcoc;

    invoke-virtual {v1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcoc;->b(J)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, v0, Lcoa;->c:Llvb;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rows"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Llvb;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcoa;->b()V

    return-void
.end method
