.class final synthetic Lbhf;
.super Ljava/lang/Object;

# interfaces
.implements Llus;


# instance fields
.field private final a:Lbgy;


# direct methods
.method public constructor <init>(Lbgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhf;->a:Lbgy;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbhf;->a:Lbgy;

    check-cast p1, Lcfn;

    invoke-interface {v0, p1}, Lbgy;->a(Lcfn;)V

    return-void
.end method
