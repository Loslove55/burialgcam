.class public final Lgtr;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgtr;->a:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Lgtq;
    .locals 2

    iget-object v0, p0, Lgtr;->a:Lpnh;

    check-cast v0, Lcle;

    invoke-virtual {v0}, Lcle;->a()Llva;

    move-result-object v0

    new-instance v1, Lgtq;

    invoke-direct {v1, v0}, Lgtq;-><init>(Llva;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgtr;->a()Lgtq;

    move-result-object v0

    return-object v0
.end method
