.class public final Lckl;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lckl;->a:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Lckk;
    .locals 2

    iget-object v0, p0, Lckl;->a:Lpnh;

    check-cast v0, Lewg;

    invoke-virtual {v0}, Lewg;->a()Lewf;

    move-result-object v0

    new-instance v1, Lckk;

    invoke-direct {v1, v0}, Lckk;-><init>(Lewf;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lckl;->a()Lckk;

    move-result-object v0

    return-object v0
.end method
