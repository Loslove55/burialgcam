.class public final Lkaj;
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

    iput-object p1, p0, Lkaj;->a:Lpnh;

    iput-object p2, p0, Lkaj;->b:Lpnh;

    return-void
.end method

.method public static a(Lpnh;Lpnh;)Lkaj;
    .locals 1

    new-instance v0, Lkaj;

    invoke-direct {v0, p0, p1}, Lkaj;-><init>(Lpnh;Lpnh;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lkaj;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmkk;

    iget-object v1, p0, Lkaj;->b:Lpnh;

    invoke-interface {v1}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmjz;

    new-instance v2, Lkai;

    invoke-direct {v2, v0, v1}, Lkai;-><init>(Lmkk;Lmjz;)V

    return-object v2
.end method
