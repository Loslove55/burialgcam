.class public final Lioh;
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

    iput-object p1, p0, Lioh;->a:Lpnh;

    iput-object p2, p0, Lioh;->b:Lpnh;

    return-void
.end method


# virtual methods
.method public final a()Liog;
    .locals 3

    iget-object v0, p0, Lioh;->a:Lpnh;

    invoke-interface {v0}, Lpnh;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lllq;

    iget-object v1, p0, Lioh;->b:Lpnh;

    check-cast v1, Ldux;

    invoke-virtual {v1}, Ldux;->a()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Liog;

    invoke-direct {v2, v0, v1}, Liog;-><init>(Lllq;Landroid/view/Window;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lioh;->a()Liog;

    move-result-object v0

    return-object v0
.end method
