.class final Lcji;
.super Ljava/lang/Object;

# interfaces
.implements Llum;


# instance fields
.field final synthetic a:Lcjr;


# direct methods
.method public constructor <init>(Lcjr;)V
    .locals 0

    iput-object p1, p0, Lcji;->a:Lcjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcji;->a:Lcjr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcjr;->cancel(Z)Z

    return-void
.end method
