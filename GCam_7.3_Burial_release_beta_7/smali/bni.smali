.class final Lbni;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbnj;


# direct methods
.method public constructor <init>(Lbnj;)V
    .locals 0

    iput-object p1, p0, Lbni;->a:Lbnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbni;->a:Lbnj;

    iget-object v0, v0, Lbnj;->a:Lllo;

    invoke-virtual {v0}, Lllo;->close()V

    return-void
.end method
