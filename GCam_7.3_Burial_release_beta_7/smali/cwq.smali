.class final synthetic Lcwq;
.super Ljava/lang/Object;

# interfaces
.implements Lggv;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwq;->a:Lpnh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcwq;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwn;

    invoke-virtual {v0}, Lcwn;->a()V

    return-void
.end method
