// Copyright (c) 2023 The Kusa developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef KUSA_FUTILS_H
#define KUSA_FUTILS_H

//#include <vector>
//#include <stdint.h>
//#include "coins.h"
class Coin;
class COutPoint;
class CBlockIndex;

void maybeSetPayload(Coin& coin, const COutPoint& outpoint, const uint16_t& nType, const std::vector<uint8_t>& vExtraPayload);
//const char *validateFutureCoin(const std::vector<uint8_t>& payload, int maturity, uint32_t confirmedTime);

#endif //KUSA_FUTILS_H
