.class public final Lcpt;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;

.field private final b:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpt;->a:Lpnh;

    iput-object p2, p0, Lcpt;->b:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Lcps;
    .locals 3

    iget-object v0, p0, Lcpt;->a:Lpnh;

    check-cast v0, Ldvj;

    invoke-virtual {v0}, Ldvj;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcpt;->b:Lpnh;

    invoke-interface {v1}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lllq;

    new-instance v2, Lcps;

    invoke-direct {v2, v0, v1}, Lcps;-><init>(Landroid/content/Context;Lllq;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcpt;->a()Lcps;

    move-result-object v0

    return-object v0
.end method
