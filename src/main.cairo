%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin

//  Constant definitions
const EMPIRIC_ORACLE_ADDRESS = 0x012fadd18ec1a23a160cc46981400160fbf4a7a5eed156c4669e39807265bcd4;
const ETH_USD = 28556963469423460; 
const BTC_USD = 27712517064455012;
// Stablecoins
const USDT_USD = 8463218574934504292;
const DAI_USD = 28254602066752356;
const USDC_USD = 8463218501920060260;
const TUSD_USD = 8391740354804937572;
const BUSD_USD = 7094703662122234724;

const AGGREGATION_MODE = 120282243752302;

// Contract interface
@contract_interface
namespace IEmpiricOracle{
    func get_value(key : felt, aggregation_mode : felt) -> (
        value : felt,
        decimals : felt,
        last_updated_timestamp : felt,
        num_sources_aggregated : felt
    ){
    }
}

// btc price function
@view
func btc_price{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr
}() -> (price: felt){
    let (price,
        decimals,
        last_updated_timestamp,
        num_sources_aggregated) = IEmpiricOracle.get_value(
            EMPIRIC_ORACLE_ADDRESS, BTC_USD, AGGREGATION_MODE
        );
    return (price,);
}

// eth price function
@view
func eth_price{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr
}() -> (price: felt){
    let (price,
        decimals,
        last_updated_timestamp,
        num_sources_aggregated) = IEmpiricOracle.get_value(
            EMPIRIC_ORACLE_ADDRESS, ETH_USD, AGGREGATION_MODE
        );
    return (price,);
}

// USDT price function
@view
func usdt_price{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr
}() -> (price: felt){
    let (price,
        decimals,
        last_updated_timestamp,
        num_sources_aggregated) = IEmpiricOracle.get_value(
            EMPIRIC_ORACLE_ADDRESS, USDT_USD, AGGREGATION_MODE
        );
    return (price,);
}

// DAI price function
@view
func dai_price{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr
}() -> (price: felt){
    let (price,
        decimals,
        last_updated_timestamp,
        num_sources_aggregated) = IEmpiricOracle.get_value(
            EMPIRIC_ORACLE_ADDRESS, DAI_USD, AGGREGATION_MODE
        );
    return (price,);
}

// USDC price function
@view
func usdc_price{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr
}() -> (price: felt){
    let (price,
        decimals,
        last_updated_timestamp,
        num_sources_aggregated) = IEmpiricOracle.get_value(
            EMPIRIC_ORACLE_ADDRESS, USDC_USD, AGGREGATION_MODE
        );
    return (price,);
}

// TUSD price function
@view
func tusd_price{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr
}() -> (price: felt){
    let (price,
        decimals,
        last_updated_timestamp,
        num_sources_aggregated) = IEmpiricOracle.get_value(
            EMPIRIC_ORACLE_ADDRESS, TUSD_USD, AGGREGATION_MODE
        );
    return (price,);
}

// BUSD price function
@view
func busd_price{
    syscall_ptr : felt*,
    pedersen_ptr : HashBuiltin*,
    range_check_ptr
}() -> (price: felt){
    let (price,
        decimals,
        last_updated_timestamp,
        num_sources_aggregated) = IEmpiricOracle.get_value(
            EMPIRIC_ORACLE_ADDRESS, BUSD_USD, AGGREGATION_MODE
        );
    return (price,);
}