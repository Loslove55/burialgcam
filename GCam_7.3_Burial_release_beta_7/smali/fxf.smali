.class public final Lfxf;
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

    iput-object p1, p0, Lfxf;->a:Lpnh;

    iput-object p2, p0, Lfxf;->b:Lpnh;

    return-void
.end method

.method public static a(Lpnh;Lpnh;)Lfxf;
    .locals 1

    new-instance v0, Lfxf;

    invoke-direct {v0, p0, p1}, Lfxf;-><init>(Lpnh;Lpnh;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfxe;
    .locals 3

    iget-object v0, p0, Lfxf;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llnj;

    iget-object v1, p0, Lfxf;->b:Lpnh;

    invoke-interface {v1}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llnu;

    new-instance v2, Lfxe;

    invoke-direct {v2, v0, v1}, Lfxe;-><init>(Llnj;Llnu;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfxf;->a()Lfxe;

    move-result-object v0

    return-object v0
.end method
