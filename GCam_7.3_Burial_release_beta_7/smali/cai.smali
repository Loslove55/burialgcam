.class final synthetic Lcai;
.super Ljava/lang/Object;

# interfaces
.implements Llus;


# instance fields
.field private final a:Lbxy;

.field private final b:Llyw;

.field private final c:Lbym;


# direct methods
.method public constructor <init>(Lbxy;Llyw;Lbym;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcai;->a:Lbxy;

    iput-object p2, p0, Lcai;->b:Llyw;

    iput-object p3, p0, Lcai;->c:Lbym;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcai;->a:Lbxy;

    iget-object v1, p0, Lcai;->b:Llyw;

    iget-object v2, p0, Lcai;->c:Lbym;

    check-cast p1, Lbxv;

    invoke-virtual {v0}, Lbxy;->o()Llon;

    move-result-object p1

    invoke-interface {p1}, Llon;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v1, v0, v2}, Lcak;->a(Llyw;Lbxy;Lbym;)V

    :cond_0
    return-void
.end method
