.class final synthetic Lglv;
.super Ljava/lang/Object;

# interfaces
.implements Llus;


# instance fields
.field private final a:Llon;


# direct methods
.method public constructor <init>(Llon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglv;->a:Llon;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lglv;->a:Llon;

    check-cast p1, Lgmh;

    sget-object v1, Lgmh;->c:Lgmh;

    invoke-virtual {p1, v1}, Lgmh;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Llon;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1}, Llon;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
