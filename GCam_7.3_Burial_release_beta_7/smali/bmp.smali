.class final synthetic Lbmp;
.super Ljava/lang/Object;

# interfaces
.implements Lowm;


# instance fields
.field private final a:Llvj;

.field private final b:Ljava/lang/String;

.field private final c:Lpnh;


# direct methods
.method public constructor <init>(Llvj;Ljava/lang/String;Lpnh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmp;->a:Llvj;

    iput-object p2, p0, Lbmp;->b:Ljava/lang/String;

    iput-object p3, p0, Lbmp;->c:Lpnh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Loxo;
    .locals 3

    iget-object v0, p0, Lbmp;->a:Llvj;

    iget-object v1, p0, Lbmp;->b:Ljava/lang/String;

    iget-object v2, p0, Lbmp;->c:Lpnh;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "#get"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Llvj;->b(Ljava/lang/String;)V

    invoke-interface {v2}, Lpnh;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbmu;

    const-string v2, "#start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Llvj;->c(Ljava/lang/String;)V

    invoke-interface {p1}, Lbmu;->O()Loxo;

    move-result-object p1

    invoke-interface {v0}, Llvj;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Loza;->a(Ljava/lang/Object;)Loxo;

    move-result-object p1

    :goto_0
    return-object p1
.end method
