.class public final Leau;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lpnh;


# direct methods
.method public constructor <init>(Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leau;->a:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Leau;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfkd;

    invoke-static {v0}, Leat;->a(Lfkd;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leau;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
