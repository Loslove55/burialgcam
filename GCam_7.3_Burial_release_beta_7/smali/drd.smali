.class final synthetic Ldrd;
.super Ljava/lang/Object;

# interfaces
.implements Llum;


# instance fields
.field private final a:Ldrh;


# direct methods
.method public constructor <init>(Ldrh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrd;->a:Ldrh;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Ldrd;->a:Ldrh;

    iget-object v1, v0, Ldrh;->f:Ldwz;

    iget-object v0, v0, Ldrh;->l:Ldww;

    invoke-virtual {v1, v0}, Ldwz;->b(Ldww;)V

    return-void
.end method