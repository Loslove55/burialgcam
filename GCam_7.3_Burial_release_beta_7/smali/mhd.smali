.class final synthetic Lmhd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Llum;


# direct methods
.method public constructor <init>(Llum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmhd;->a:Llum;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmhd;->a:Llum;

    invoke-interface {v0}, Llum;->close()V

    return-void
.end method
